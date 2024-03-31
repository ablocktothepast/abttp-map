function alttp:summon/bee_friend

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{bottle:1,spw:1}}}] store result score tempuse dummy run scoreboard players get @s spw_1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{bottle:1,spw:2}}}] store result score tempuse dummy run scoreboard players get @s spw_2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{bottle:1,spw:3}}}] store result score tempuse dummy run scoreboard players get @s spw_3

execute if score tempuse dummy matches 21 run scoreboard players set @s bottle_1 0
execute if score tempuse dummy matches 22 run scoreboard players set @s bottle_2 0
execute if score tempuse dummy matches 23 run scoreboard players set @s bottle_3 0
execute if score tempuse dummy matches 24 run scoreboard players set @s bottle_4 0