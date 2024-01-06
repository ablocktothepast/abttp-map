scoreboard players set @s enemydummy -1
scoreboard players set @s enemydummy2 0
scoreboard players set @s enemydummy3 1000

scoreboard players add @s dummy 1

execute if score @s dummy matches 1 run playsound alttp.boss_death weather @p ~ ~ ~ 1 1

execute if score @s dummy matches 45 as @e[type=armor_stand,tag=moldormbody4] at @s run particle explosion ~ ~ ~
execute if score @s dummy matches 45 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1
execute if score @s dummy matches 45 run kill @e[type=armor_stand,tag=moldormbody4]

execute if score @s dummy matches 60 as @e[type=armor_stand,tag=moldormbody3] at @s run particle explosion ~ ~ ~
execute if score @s dummy matches 60 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1
execute if score @s dummy matches 60 run kill @e[type=armor_stand,tag=moldormbody3]

execute if score @s dummy matches 75 as @e[type=armor_stand,tag=moldormbody2] at @s run particle explosion ~ ~ ~
execute if score @s dummy matches 75 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1
execute if score @s dummy matches 75 run kill @e[type=armor_stand,tag=moldormbody2]

execute if score @s dummy matches 90 as @e[type=armor_stand,tag=moldormbody1] at @s run particle explosion ~ ~ ~
execute if score @s dummy matches 90 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1
execute if score @s dummy matches 90 run kill @e[type=armor_stand,tag=moldormbody1]

execute if score @s dummy matches 105 run particle explosion_emitter ~ ~ ~
execute if score @s dummy matches 105 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1
execute if score @s dummy matches 105 run bossbar set moldorm visible false
execute if score @s dummy matches 105 run playsound entity.wither.death weather @p ~ ~ ~ 1 1
execute if score @s dummy matches 105 run kill @e[type=marker,tag=molcp]
execute if score @s dummy matches 105 run kill @e[type=armor_stand,tag=moldorm_head]
execute if score @s dummy matches 105 run kill @s