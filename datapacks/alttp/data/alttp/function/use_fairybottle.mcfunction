playsound alttp.fairy weather @s ~ ~ ~ 1 1

effect give @s minecraft:regeneration 2 4 true

tellraw @p ["",{"text":"[Fairy] ","color":"dark_purple"},"Allow me to heal your wounds, master Link!"]

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,spw:1}}}}] store result score tempuse dummy run scoreboard players get @s spw_1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,spw:2}}}}] store result score tempuse dummy run scoreboard players get @s spw_2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,spw:3}}}}] store result score tempuse dummy run scoreboard players get @s spw_3

execute if score tempuse dummy matches 21 run scoreboard players set @s bottle_1 0
execute if score tempuse dummy matches 22 run scoreboard players set @s bottle_2 0
execute if score tempuse dummy matches 23 run scoreboard players set @s bottle_3 0
execute if score tempuse dummy matches 24 run scoreboard players set @s bottle_4 0