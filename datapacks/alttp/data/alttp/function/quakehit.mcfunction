execute store result score result rand run random value 1..2
execute if score @p spw_e_12 matches 1 run scoreboard players set result rand 3
#execute if score result rand matches 1 run function alttp:summon/slime
execute if score result rand matches 1 run kill @s
execute if score result rand matches 2 run damage @s 20
execute if score result rand matches 3 run data merge entity @s {Motion:[0.0d,2.0d,0.0d]}