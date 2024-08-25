execute unless score @s spw_e_1 matches 1 unless score frod dummy matches 1 run scoreboard players remove @p magic 3
execute if score @s spw_e_1 matches 1 unless score frod dummy matches 1 run scoreboard players remove @p magic 1

execute positioned ^ ^0.5 ^0.5 as @e[type=marker,tag=lampspot,distance=..2.5] at @s run setblock ~ ~ ~ fire

execute unless score frod dummy matches 1 run playsound alttp.magic_powder_a weather @p ~ ~ ~ 1 1

scoreboard players set frod dummy 0

execute rotated ~ 0 run particle flame ^ ^1 ^1.2 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.21 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.22 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.23 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.24 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.25 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.26 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.27 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.28 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.29 0 0 0 0.01 1 force
execute rotated ~ 0 run particle flame ^ ^1 ^1.3 0 0 0 0.01 1 force

execute rotated ~ 0 positioned ^ ^ ^1 if score @s spw_e_1 matches 1 as @e[tag=enemy,distance=..1] run data merge entity @s {Fire:200s}
execute rotated ~ 0 positioned ^ ^-1 ^1 if score @s spw_e_1 matches 1 as @e[tag=enemy,distance=..1] run data merge entity @s {Fire:200s}

execute rotated ~ 0 run summon marker ^ ^ ^1 {Tags:["lamplight"]}