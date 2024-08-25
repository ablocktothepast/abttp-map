#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=armor_stand,tag=gurugurubar1] if score @s enemylink = @e[type=armor_stand,tag=gurugurubar,limit=1,sort=nearest] enemylink run tag @s add link_1
execute as @e[type=armor_stand,tag=gurugurubar2] if score @s enemylink = @e[type=armor_stand,tag=gurugurubar,limit=1,sort=nearest] enemylink run tag @s add link_2
execute as @e[type=armor_stand,tag=gurugurubar3] if score @s enemylink = @e[type=armor_stand,tag=gurugurubar,limit=1,sort=nearest] enemylink run tag @s add link_3
execute as @e[type=armor_stand,tag=gurugurubar4] if score @s enemylink = @e[type=armor_stand,tag=gurugurubar,limit=1,sort=nearest] enemylink run tag @s add link_4

execute at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

execute as @e[type=armor_stand,tag=link_1] run tp @s ^ ^-1.3 ^1 ~ ~
execute as @e[type=armor_stand,tag=link_2] run tp @s ^ ^-1.3 ^2 ~ ~
execute as @e[type=armor_stand,tag=link_3] run tp @s ^ ^-1.3 ^3 ~ ~
execute as @e[type=armor_stand,tag=link_4] run tp @s ^ ^-1.3 ^4 ~ ~

execute as @e[type=armor_stand,tag=link_1] at @s run execute positioned ~ ~1.3 ~ run execute as @p[distance=..0.5] at @s run scoreboard players set @s set_damage 4
execute as @e[type=armor_stand,tag=link_2] at @s run execute positioned ~ ~1.3 ~ run execute as @p[distance=..0.5] at @s run scoreboard players set @s set_damage 4
execute as @e[type=armor_stand,tag=link_3] at @s run execute positioned ~ ~1.3 ~ run execute as @p[distance=..0.5] at @s run scoreboard players set @s set_damage 4
execute as @e[type=armor_stand,tag=link_4] at @s run execute positioned ~ ~1.3 ~ run execute as @p[distance=..0.5] at @s run scoreboard players set @s set_damage 4

execute at @s unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~6 ~

execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_granite run kill @e[type=armor_stand,tag=link_1]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_granite run kill @e[type=armor_stand,tag=link_2]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_granite run kill @e[type=armor_stand,tag=link_3]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_granite run kill @e[type=armor_stand,tag=link_4]
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_granite run kill @s
execute if score @s enemydummy matches 1 unless block ~ ~ ~ polished_granite run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0..1 run setblock ~ ~ ~ polished_granite
scoreboard players set @s enemydummy 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=armor_stand,tag=link_b] run tag @s add link_init
tag @e[type=armor_stand] remove link_1
tag @e[type=armor_stand] remove link_2
tag @e[type=armor_stand] remove link_3
tag @e[type=armor_stand] remove link_4
tag @s remove link_a