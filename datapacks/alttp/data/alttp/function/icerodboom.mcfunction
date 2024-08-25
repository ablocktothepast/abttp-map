execute positioned ~ ~1.3 ~ run tag @e[tag=enemy,distance=..5] add icerodfrozen
execute positioned ~ ~1.3 ~ run scoreboard players set @e[tag=enemy,distance=..5] frozentimer 300

particle explosion_emitter ~ ~ ~
playsound entity.generic.explode weather @p ~ ~ ~ 1 1.5
execute as @e[tag=enemy,distance=..5] run damage @s 1

kill @s