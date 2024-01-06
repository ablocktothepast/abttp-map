#FIND LINKED CHEST DISPLAY
tag @s add chestlink_a
execute as @e[type=item_display,tag=chestd] if score @s chestid = @e[type=interaction,tag=chestm,limit=1,sort=nearest] chestid run tag @s add chestlink_b
setblock ~ ~ ~ barrier
execute if entity @s[tag=big] run setblock ^-1 ^ ^ barrier

execute if data entity @s interaction.timestamp run function alttp:chest_sneakerror
execute if entity @s[tag=open_sesame] run function alttp:chest_open

tp @e[type=item_display,tag=chestlink_b] ~ ~0.5 ~ ~ ~

#REMOVE LINK TAG FOR NEXT CHEST
tag @e remove chestlink_b
tag @e remove chestlink_a