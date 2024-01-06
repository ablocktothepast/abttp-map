effect give @e[distance=..5] minecraft:resistance 1 255 true
effect give @p minecraft:resistance 1 255 true
function delta:api/explosion_emitter_particle
function delta:api/explosion_sound
execute as @e[tag=enemy,distance=..5,type=!armor_stand] run damage @s 10
tag @e[type=zombie,tag=gibdozo,distance=..5] add firerodhit

execute if entity @e[tag=icerodfrozen,distance=..5] run playsound block.lava.extinguish weather @p ~ ~ ~ 1 1
tag @e[tag=icerodfrozen,distance=..5] remove icerodfrozen

execute as @e[type=zombie,tag=freezorzo,distance=..5] run damage @s 10

scoreboard players set frod dummy 1
function alttp:lamplight

kill @s