scoreboard players set @s dummy 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"color":"dark_gray","italic":false,"text":"Fairy Bottle"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Right-click to release it!"}'],"minecraft:custom_model_data":48}}]}] run scoreboard players set @s dummy 69

# execute unless score @s dummy matches 69 run tp @p 127 -61 4
# execute unless score @s dummy matches 69 run tellraw @p ["","Choose a location:","\n",{"text":"[Link's House]","color":"green","clickEvent":{"action":"run_command","value":"/tp @p -96 -2 561"}},"\n",{"text":"[Sanctuary]","color":"green","clickEvent":{"action":"run_command","value":"/tellraw @p \"Not added yet!\""}}]
execute unless score @s dummy matches 69 run scoreboard players set @a deaths 0
execute unless score @s dummy matches 69 run tp @p -319 7.6 584
execute unless score @s dummy matches 69 run playsound minecraft:alttp.gameover weather @a -319 7.6 584
execute unless score @s dummy matches 69 run scoreboard players set @s gameover 10

execute if score @s dummy matches 69 run function alttp:fairysave
function alttp:extrahealth_apply

kill @e[type=armor_stand,tag=drown]
weather clear