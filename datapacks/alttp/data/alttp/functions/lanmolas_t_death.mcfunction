scoreboard players add @s enemydummy5 1
tp @e[type=slime,distance=..20] ~ 0 ~
scoreboard players set @s enemydummy 5
execute if score @s enemydummy5 matches 1 run playsound minecraft:alttp.boss_death weather @p ~ ~ ~

execute if score @s enemydummy5 matches 60 run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 60 at @e[type=armor_stand,tag=body7] run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 60 run kill @e[type=armor_stand,tag=body7]

execute if score @s enemydummy5 matches 70 run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 70 at @e[type=armor_stand,tag=body6] run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 70 run kill @e[type=armor_stand,tag=body6]

execute if score @s enemydummy5 matches 80 run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 80 at @e[type=armor_stand,tag=body5] run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 80 run kill @e[type=armor_stand,tag=body5]

execute if score @s enemydummy5 matches 90 run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 90 at @e[type=armor_stand,tag=body4] run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 90 run kill @e[type=armor_stand,tag=body4]

execute if score @s enemydummy5 matches 100 run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 100 at @e[type=armor_stand,tag=body3] run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 100 run kill @e[type=armor_stand,tag=body3]

execute if score @s enemydummy5 matches 105 run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 105 at @e[type=armor_stand,tag=body2] run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 105 run kill @e[type=armor_stand,tag=body2]

execute if score @s enemydummy5 matches 110 run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 110 at @e[type=armor_stand,tag=body1] run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 110 run kill @e[type=armor_stand,tag=body1]

execute if score @s enemydummy5 matches 115.. run playsound minecraft:entity.generic.explode weather @p ~ ~ ~
execute if score @s enemydummy5 matches 115.. run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s enemydummy5 matches 115 unless entity @e[type=armor_stand,tag=lanmolas,distance=1..] run bossbar set lanmolas visible false
execute if score @s enemydummy5 matches 120 run kill @s