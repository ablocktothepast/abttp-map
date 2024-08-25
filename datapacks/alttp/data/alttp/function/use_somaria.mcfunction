execute unless score @s magic matches 15.. run tellraw @p {"text":"You're out of magic!","color":"dark_red"}
execute if score @s magic matches 15.. rotated ~ 0 run function alttp:somariab_kill
execute if score @s magic matches 15.. rotated ~ 0 if block ^ ^ ^1 air run setblock ^ ^ ^1 dried_kelp_block
execute if score @s magic matches 15.. rotated ~ 0 if block ^ ^ ^1 dried_kelp_block positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["somariablock"]}
execute rotated ~ 0 if block ^ ^ ^1 dried_kelp_block if score @s magic matches 15.. run playsound block.beacon.activate weather @p ~ ~ ~ 100000 1.69
execute rotated ~ 0 if block ^ ^ ^1 dried_kelp_block if score @s magic matches 15.. run scoreboard players remove @s magic 15
execute rotated ~ 0 unless block ^ ^ ^1 dried_kelp_block if score @s magic matches 15.. run tellraw @p {"text":"You can't place that here!","color":"dark_red"}