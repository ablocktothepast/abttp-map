#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=armor_stand,tag=icescythe1] if score @s enemylink = @e[type=armor_stand,tag=icescythe,limit=1,sort=nearest] enemylink run tag @s add link_1
execute as @e[type=armor_stand,tag=icescythe2] if score @s enemylink = @e[type=armor_stand,tag=icescythe,limit=1,sort=nearest] enemylink run tag @s add link_2
execute as @e[type=armor_stand,tag=icescythe3] if score @s enemylink = @e[type=armor_stand,tag=icescythe,limit=1,sort=nearest] enemylink run tag @s add link_3
execute as @e[type=armor_stand,tag=icescythe4] if score @s enemylink = @e[type=armor_stand,tag=icescythe,limit=1,sort=nearest] enemylink run tag @s add link_4
execute as @e[type=armor_stand,tag=icescythe5] if score @s enemylink = @e[type=armor_stand,tag=icescythe,limit=1,sort=nearest] enemylink run tag @s add link_5
execute as @e[type=armor_stand,tag=icescythe6] if score @s enemylink = @e[type=armor_stand,tag=icescythe,limit=1,sort=nearest] enemylink run tag @s add link_6

execute at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

execute as @e[type=armor_stand,tag=link_1] run tp @s ^ ^-1.3 ^1 ~ ~
execute as @e[type=armor_stand,tag=link_2] run tp @s ^ ^-1.3 ^2 ~ ~
execute as @e[type=armor_stand,tag=link_3] run tp @s ^ ^-1.3 ^3 ~ ~
execute as @e[type=armor_stand,tag=link_4] run tp @s ^ ^-1.3 ^-1 ~ ~
execute as @e[type=armor_stand,tag=link_5] run tp @s ^ ^-1.3 ^-2 ~ ~
execute as @e[type=armor_stand,tag=link_6] run tp @s ^ ^-1.3 ^-3 ~ ~

tag @e[type=armor_stand,tag=link_1] add links
tag @e[type=armor_stand,tag=link_2] add links
tag @e[type=armor_stand,tag=link_3] add links
tag @e[type=armor_stand,tag=link_4] add links
tag @e[type=armor_stand,tag=link_5] add links
tag @e[type=armor_stand,tag=link_6] add links

execute as @e[type=armor_stand,tag=links] at @s run execute positioned ~ ~1.3 ~ run execute as @p[distance=..0.5] at @s run scoreboard players set @s set_damage 2
execute as @e[type=armor_stand,tag=links] at @s run execute positioned ~ ~1.3 ~ run execute as @p[distance=..0.5] at @s run scoreboard players set @s frozentimer 20
execute as @e[type=armor_stand,tag=links] at @s run execute positioned ~ ~1.3 ~ run execute as @p[distance=..0.5] at @s run tag @s add icerodfrozen

execute at @s run tp @s ~ ~ ~ ~8 ~

execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run kill @e[type=armor_stand,tag=link_1]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run kill @e[type=armor_stand,tag=link_2]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run kill @e[type=armor_stand,tag=link_3]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run kill @e[type=armor_stand,tag=link_4]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run kill @e[type=armor_stand,tag=link_5]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run kill @e[type=armor_stand,tag=link_6]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run kill @s
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_diorite run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0..1 run setblock ~ ~ ~ polished_diorite
scoreboard players set @s enemydummy 1

#REMOVE LINK TAG FOR NEXT ENEMY
tag @e[type=armor_stand] remove link_1
tag @e[type=armor_stand] remove link_2
tag @e[type=armor_stand] remove link_3
tag @e[type=armor_stand] remove link_4
tag @e[type=armor_stand] remove link_5
tag @e[type=armor_stand] remove link_6
tag @e[type=armor_stand] remove links
tag @s remove link_a