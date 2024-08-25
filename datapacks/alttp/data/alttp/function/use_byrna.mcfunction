execute if score @s byrnaing matches 0 unless score @s magic matches 2.. run tellraw @s {"text":"You're out of magic!","color":"dark_red"}
execute if score @s byrnaing matches 1 run tag @s add off
execute if score @s magic matches 2.. if score @s byrnaing matches 0 run tag @s add on
execute unless score @s byrnaing matches -2147483648..2147483647 run tag @s add on

execute if entity @s[tag=off] run scoreboard players set @s byrnaing 0
execute if entity @s[tag=off] run effect clear @p glowing
execute if entity @s[tag=off] run playsound block.beacon.deactivate weather @p ~ ~ ~ 1 0.6
execute if entity @s[tag=on] run scoreboard players set @s byrnaing 1
execute if entity @s[tag=on] run playsound block.beacon.activate weather @p ~ ~ ~ 1 0.6

execute if score @s byrnaing matches 1 run scoreboard players set @s byrnatimer 0

tag @s remove on
tag @s remove off