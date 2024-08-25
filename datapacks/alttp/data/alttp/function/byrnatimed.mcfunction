execute unless score @s spw_e_17 matches 1 unless score @s magic matches 2.. run tellraw @p {"text":"You're out of magic!","color":"dark_red"}
execute unless score @s spw_e_17 matches 1 unless score @s magic matches 2.. run playsound block.beacon.deactivate weather @p ~ ~ ~ 1 0.6
execute unless score @s spw_e_17 matches 1 unless score @s magic matches 2.. run effect clear @p glowing
execute unless score @s spw_e_17 matches 1 unless score @s magic matches 2.. run scoreboard players set @s byrnaing 0
execute unless score @s spw_e_17 matches 1 if score @s magic matches 2.. run scoreboard players set @s byrnatimer 20
execute unless score @s spw_e_17 matches 1 if score @s magic matches 2.. rotated ~ 0 run function alttp:byrnafield
execute unless score @s spw_e_17 matches 1 if score @s magic matches 2.. run scoreboard players remove @s magic 2

execute if score @s spw_e_17 matches 1 unless score @s magic matches 1.. run tellraw @p {"text":"You're out of magic!","color":"dark_red"}
execute if score @s spw_e_17 matches 1 unless score @s magic matches 1.. run playsound block.beacon.deactivate weather @p ~ ~ ~ 1 0.6
execute if score @s spw_e_17 matches 1 unless score @s magic matches 1.. run effect clear @p glowing
execute if score @s spw_e_17 matches 1 unless score @s magic matches 1.. run scoreboard players set @s byrnaing 0
execute if score @s spw_e_17 matches 1 if score @s magic matches 1.. run scoreboard players set @s byrnatimer 20
execute if score @s spw_e_17 matches 1 if score @s magic matches 1.. rotated ~ 0 run function alttp:byrnafield
execute if score @s spw_e_17 matches 1 if score @s magic matches 1.. run scoreboard players remove @s magic 2

tag @e remove byrnahit