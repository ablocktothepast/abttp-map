#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=chain_chompsf] if score @s enemylink = @e[type=armor_stand,tag=chain_chomp,limit=1,sort=nearest] enemylink run tag @s add link_b
execute as @e[type=marker,tag=chain_chomp_pole] if score @s enemylink = @e[type=armor_stand,tag=chain_chomp,limit=1,sort=nearest] enemylink run tag @s add link_pole

#POLE
execute as @e[type=marker,tag=link_pole] at @s run setblock ~ ~ ~ oak_fence

#LINKY
execute if score @s enemydummy matches 0..54 run tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if score @s enemydummy matches 55.. run tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#STATE SWITCHING
execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches 0 if entity @p[distance=..5] run scoreboard players set @s enemydummy 80
execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1

#STRETCHY-O
execute if score @s enemydummy matches 79 facing entity @p eyes rotated ~ ~-10 run tp @s ~ ~ ~ ~ ~
execute at @s if score @s enemydummy matches 60.. if entity @e[type=marker,tag=link_pole,distance=..4.4] run tp @s ^ ^ ^0.3 ~ ~
execute at @s if score @s enemydummy matches 55..59 unless entity @e[type=marker,tag=link_pole,distance=..4.5] run tp @s ^ ^ ^-0.1 ~ ~

#LIMIT SILVERFISH DISTANCE
execute if score @s enemydummy matches 0..54 as @e[type=silverfish,tag=link_b] at @s unless entity @e[type=marker,tag=link_pole,distance=..4.5] rotated ~ 0 run tp @s ^ ^ ^-0.05 ~ ~ 

#DAMAGING
execute positioned ~ ~-1.3 ~ unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @p set_damage 6
execute positioned ~ ~-1.3 ~ unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @s enemydummy2 30
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @p set_damage 6
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @s enemydummy2 30
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#ERROR PREVENTION
execute unless entity @e[type=marker,tag=link_pole,distance=..7] run tp @e[type=silverfish,tag=link_b] @e[type=marker,tag=link_pole,limit=1]

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @e[type=marker] remove link_pole
tag @s remove link_a