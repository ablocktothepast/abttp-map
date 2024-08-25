execute if score . thirdperson matches 1 run data remove entity @e[type=interaction,tag=thirdperson_interaction,limit=1] interaction

execute as @a[tag=!hookshotting,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":7}}}] at @s unless block ~ ~-0.2 ~ #gothrough run function alttp:hookshot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":4}}}] run function alttp:usepegasus
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":33}}}] run function alttp:useboomerang
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":1}}}] run function alttp:fireroduse
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":3}}}] run function alttp:lampuse
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":2}}}] run function alttp:iceroduse
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":9}}}] unless score @s magic matches 1.. run tellraw @s {"text":"You're out of magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":9}}}] if score @s magic matches 1.. run function alttp:usemagicpowder

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":284,"minecraft:custom_data":{active:0}}}}] run function alttp:bombuse

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":284,"minecraft:custom_data":{active:1}}}}] run function alttp:activebombuse

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":13}}}] unless score @s magic matches 15.. run tellraw @s {"text":"Not enough magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":13}}}] if score @s magic matches 15.. run function alttp:usebombosmedallion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":14}}}] unless score @s magic matches 15.. run tellraw @s {"text":"Not enough magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":14}}}] if score @s magic matches 15.. run function alttp:usequakemedallion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":12}}}] unless score @s magic matches 15.. run tellraw @s {"text":"Not enough magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":12}}}] if score @s magic matches 15.. run function alttp:useethermedallion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":316}}}] if score 1 quests_2 matches 1 run function alttp:questm_open

# execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run playsound alttp.wallet weather @p ~ ~ ~ 1 1
# execute if score @s rupees matches 2.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run tellraw @p ["","You have ",{"score":{"name":"@s","objective":"rupees"},"color":"green"},{"text":" rupees","color":"green"},"."]
# execute if score @s rupees matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run tellraw @p ["","You have ",{"score":{"name":"@s","objective":"rupees"},"color":"green"},{"text":" rupee","color":"green"},"."]
# execute if score @s rupees matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run tellraw @p ["","You are out of rupees!",""]

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":44}}}] run function alttp:bug_catch

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,type:4}}}}] run function alttp:use_fairybottle

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,type:5}}}}] run function alttp:use_beebottle

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,type:6}}}}] run function alttp:use_goldenbeebottle

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,type:3}}}}] run function alttp:other/witch/use_lifepotion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,type:2}}}}] run function alttp:other/witch/use_magicpotion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{bottle:1,type:1}}}}] run function alttp:other/witch/use_lifemagicpotion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":52}}}] run function alttp:use_shovel

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":53}}}] run function alttp:use_magical_boomerang

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":54}}}] run function alttp:use_power_glove

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":58}}}] run function alttp:use_magic_cape

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":60}}}] run function alttp:use_somaria

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":61}}}] run function alttp:use_byrna

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":62}}}] run function alttp:use_hammer

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":63}}}] run function alttp:use_titansmitt

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Inventory"}'}}}] run function alttp:bm_open

scoreboard players set @s rightclick 0