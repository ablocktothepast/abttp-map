scoreboard players remove @s bombtick 1

execute if score @s bombtick matches 8 run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if score @s bombtick matches 8 run particle explosion_emitter ~ ~ ~
execute if score @s bombtick matches 8 run playsound entity.generic.explode weather @p ~ ~ ~ 1 0.9
execute if score @s bombtick matches 6 run particle explosion_emitter ~-2 ~ ~
execute if score @s bombtick matches 6 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1.1
execute if score @s bombtick matches 4 run particle explosion_emitter ~2 ~ ~
execute if score @s bombtick matches 4 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1
execute if score @s bombtick matches 2 run particle explosion_emitter ~ ~ ~2
execute if score @s bombtick matches 2 run playsound entity.generic.explode weather @p ~ ~ ~ 1 1.1
execute if score @s bombtick matches 0 run particle explosion_emitter ~ ~ ~-2
execute if score @s bombtick matches 0 run playsound entity.generic.explode weather @p ~ ~ ~ 1 0.9
execute if score @s bombtick matches 0 run damage @e[tag=enemy,distance=..10] 15
execute if score @s bombtick matches 0 positioned ~ ~1.4 ~ run function alttp:wall_exploding_super
execute if score @s bombtick matches 0 run kill @s