execute as @e[type=marker,tag=somariablock] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=somariablock] at @s run playsound minecraft:entity.zombie.death weather @a ~ ~ ~ 1 1
execute as @e[type=marker,tag=somariablock] at @s run particle soul ~ ~ ~ 0.5 0.5 0.5 0 100 force
kill @e[type=marker,tag=somariablock]