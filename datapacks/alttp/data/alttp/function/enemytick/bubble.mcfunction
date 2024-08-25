#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=armor_stand,tag=bubble_balls] if score @s enemylink = @e[type=armor_stand,tag=bubble,limit=1,sort=nearest] enemylink run tag @s add link_b

#MOVE
execute unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.2
execute unless block ^ ^ ^0.5 #gothrough run tag @s add bubble_rotate

#ROTATE
execute if entity @s[tag=bubble_rotate] at @s unless block ^0.6 ^ ^ air unless block ^-0.6 ^ ^ air run tag @s add cornered
execute if entity @s[tag=bubble_rotate] at @s unless block ^0.6 ^ ^ air unless block ^-0.6 ^ ^ air run tag @s remove bubble_rotate
execute if entity @s[tag=bubble_rotate] at @s if block ^-0.6 ^ ^ air run tp @s ~ ~ ~ ~90 ~
execute if entity @s[tag=bubble_rotate] at @s if block ^0.6 ^ ^ air run tp @s ~ ~ ~ ~-90 ~
execute if entity @s[tag=bubble_rotate] at @s run tp @s ^ ^ ^0.2
execute if entity @s[tag=bubble_rotate] run playsound alttp.tink weather @p ~ ~ ~ 1 1
execute if entity @s[tag=bubble_rotate] run tag @s remove bubble_rotate

#CORNER
execute if entity @s[tag=cornered] at @s run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=cornered] at @s run tp @s ^ ^ ^0.2
execute if entity @s[tag=cornered] at @s run playsound alttp.tink weather @p ~ ~ ~ 1 1
execute if entity @s[tag=cornered] at @s run tag @s remove cornered

#DAMAGE AND MAGIC THING
execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1
execute unless score @s enemydummy matches 1.. if entity @p[distance=..0.7] run scoreboard players set @p set_damage 2
execute unless score @s enemydummy matches 1.. if entity @p[distance=..0.7] run scoreboard players remove @p magic 2
execute unless score @s enemydummy matches 1.. if entity @p[distance=..0.7] run playsound minecraft:alttp.magic_powder_b weather @p ~ ~ ~ 3 0.7
execute unless score @s enemydummy matches 1.. if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 40

#Linky
execute at @s run tp @e[type=armor_stand,tag=link_b] ~ ~ ~
execute as @e[type=armor_stand,tag=link_b] at @s run tp @s ~ ~ ~ ~25 0

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=armor_stand,tag=link_b] run tag @s add link_init
tag @e remove link_b
tag @e remove link_a