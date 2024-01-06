#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=beamoszo] if score @s enemylink = @e[type=armor_stand,tag=beamos,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=zombie,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#SHOOTY
tp @s ~ ~ ~ ~3 0
scoreboard players set @s enemydummy 0
execute positioned ^ ^ ^1 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^1.5 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^2 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^2.5 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^3 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^3.5 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^4 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^4.5 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute positioned ^ ^ ^5 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1

execute unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1 rotated ~7 ~ run function alttp:beamosshoot
execute unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1 run scoreboard players set @s enemydummy2 10
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a