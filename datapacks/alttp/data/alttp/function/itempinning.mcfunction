execute if score @s swordtier matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword",Slot:0b,components:{"minecraft:can_break":{predicates:[{blocks:"sweet_berry_bush"},{blocks:"nether_sprouts"}]},"minecraft:custom_name":'{"italic":false,"text":"Fighter\'s Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Given to you by your uncle."}']}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword",Slot:0b,components:{"minecraft:custom_name":'{"italic":false,"text":"Fighter\'s Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Given to you by your uncle."}']}}]}] run clear @s stone_sword
execute if score @s swordtier matches 1 run item replace entity @s hotbar.0 with minecraft:stone_sword[minecraft:lore=['{"text":"Given to you by your uncle.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Fighter\'s Sword","italic":false}',minecraft:can_break={predicates:[{blocks:"minecraft:sweet_berry_bush"},{blocks:"nether_sprouts"}]}] 1

execute if score @s swordtier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b,components:{"minecraft:can_break":{predicates:[{blocks:"sweet_berry_bush"},{blocks:"nether_sprouts"}]},"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Master Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Found in the lost woods."}']}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Master Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Found in the lost woods."}']}}]}] run clear @s iron_sword
execute if score @s swordtier matches 2 run item replace entity @s hotbar.0 with minecraft:iron_sword[minecraft:lore=['{"text":"Found in the lost woods.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Master Sword","color":"gold","italic":false}',minecraft:can_break={predicates:[{blocks:"minecraft:sweet_berry_bush"},{blocks:"nether_sprouts"}]}] 1

execute if score @s swordtier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_sword",Slot:0b,components:{"minecraft:can_break":{predicates:[{blocks:"sweet_berry_bush"},{blocks:"nether_sprouts"}]},"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Tempered Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Tempered by the Dwarven Swordsmiths."}']}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_sword",Slot:0b,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Tempered Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Tempered by the Dwarven Swordsmiths."}']}}]}] run clear @s diamond_sword
execute if score @s swordtier matches 3 run item replace entity @s hotbar.0 with minecraft:diamond_sword[minecraft:lore=['{"text":"Tempered by the Dwarven Swordsmiths.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Tempered Sword","color":"gold","italic":false}',minecraft:can_break={predicates:[{blocks:"minecraft:sweet_berry_bush"},{blocks:"nether_sprouts"}]}] 1

execute if score @s swordtier matches 4 unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b,components:{"minecraft:can_break":{predicates:[{blocks:"sweet_berry_bush"},{blocks:"nether_sprouts"},{blocks:"suspicious_gravel"}]},"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Golden Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"The most powerful of them all."}']}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Golden Sword"}',"minecraft:lore":['{"color":"white","italic":false,"text":"The most powerful of them all."}']}}]}] run clear @s netherite_sword
execute if score @s swordtier matches 4 run item replace entity @s hotbar.0 with minecraft:netherite_sword[minecraft:lore=['{"text":"The most powerful of them all.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Golden Sword","italic":false,"color":"gold"}',minecraft:can_break={predicates:[{blocks:"minecraft:sweet_berry_bush"},{blocks:"nether_sprouts"},{blocks:"suspicious_gravel"}]}] 1

execute if score @s bushminecool matches 1.. run item replace entity @s hotbar.0 with air

execute if score @s shieldtier matches 0 run item replace entity @s weapon.offhand with air

execute if score @s shieldtier matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,components:{"minecraft:custom_name":'{"italic":false,"text":"Fighter\'s Shield"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Given to you by your uncle."}'],"minecraft:custom_model_data":1}}]}] run clear @s shield[custom_model_data=1]
execute if score @s shieldtier matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,components:{"minecraft:custom_name":'{"italic":false,"text":"Fighter\'s Shield"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Given to you by your uncle."}'],"minecraft:custom_model_data":1}}]}] run item replace entity @s weapon.offhand with minecraft:shield[minecraft:custom_model_data=1,minecraft:lore=['{"text":"Given to you by your uncle.","color":"white","italic":false}'],minecraft:unbreakable={},minecraft:custom_name='{"text":"Fighter\'s Shield","italic":false}'] 1
execute if score @s shieldtier matches 1 run item replace entity @s weapon.offhand with minecraft:shield[minecraft:custom_model_data=1,minecraft:lore=['{"text":"Given to you by your uncle.","color":"white","italic":false}'],minecraft:unbreakable={},minecraft:custom_name='{"text":"Fighter\'s Shield","italic":false}'] 1

execute if score @s shieldtier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",count:1,Slot:-106b,components:{"minecraft:custom_name":'{"color":"#FF623B","italic":false,"text":"Fire Shield"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Protects you from fire!"}'],"minecraft:custom_model_data":2}}]}] run clear @s shield[custom_model_data=2]
execute if score @s shieldtier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",count:1,Slot:-106b,components:{"minecraft:custom_name":'{"color":"#FF623B","italic":false,"text":"Fire Shield"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Protects you from fire!"}'],"minecraft:custom_model_data":2}}]}] run item replace entity @s weapon.offhand with minecraft:shield[minecraft:custom_model_data=2,minecraft:lore=['{"text":"Protects you from fire!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Fire Shield","color":"#FF623B","italic":false}'] 1
execute if score @s shieldtier matches 2 run item replace entity @s weapon.offhand with minecraft:shield[minecraft:custom_model_data=2,minecraft:lore=['{"text":"Protects you from fire!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Fire Shield","color":"#FF623B","italic":false}'] 1

execute if score @s shieldtier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",count:1,Slot:-106b,components:{"minecraft:custom_name":'{"color":"#1F69FF","italic":false,"text":"Mirror Shield"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Protects you from lasers!"}'],"minecraft:custom_model_data":3}}]}] run clear @s shield[custom_model_data=3]
execute if score @s shieldtier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",count:1,Slot:-106b,components:{"minecraft:custom_name":'{"color":"#1F69FF","italic":false,"text":"Mirror Shield"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Protects you from lasers!"}'],"minecraft:custom_model_data":3}}]}] run item replace entity @s weapon.offhand with minecraft:shield[minecraft:custom_model_data=3,minecraft:lore=['{"text":"Protects you from lasers!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Mirror Shield","color":"#1F69FF","italic":false}'] 1
execute if score @s shieldtier matches 3 run item replace entity @s weapon.offhand with minecraft:shield[minecraft:custom_model_data=3,minecraft:lore=['{"text":"Protects you from lasers!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Mirror Shield","color":"#1F69FF","italic":false}'] 1

#ARROW
execute if score @s shotarrow matches 1.. run function alttp:arrowshot

execute unless score @s arrows_selected matches 0.. run scoreboard players set @s arrows_selected 1
execute if score arrowselectcool dummy matches 1.. run scoreboard players remove arrowselectcool dummy 1
execute if entity @s[nbt={SelectedItemSlot:8}] if score @s endereye matches 1 unless score arrowselectcool dummy matches 1.. run scoreboard players add @s arrows_selected 1
execute if entity @s[nbt={SelectedItemSlot:8}] if score @s endereye matches 1 run scoreboard players set arrowselectcool dummy 2
execute if score @s arrows_selected matches 6.. run scoreboard players set @s arrows_selected 1
execute store result score @s dummy run data get entity @s Inventory[{Slot:8b}].Count
execute if score @s arrows_selected matches 1 store result score arrowselectamount dummy run scoreboard players get @s arrows
execute if score @s arrows_selected matches 2 store result score arrowselectamount dummy run scoreboard players get @s arrows_silver
execute if score @s arrows_selected matches 3 store result score arrowselectamount dummy run scoreboard players get @s arrows_fire
execute if score @s arrows_selected matches 4 store result score arrowselectamount dummy run scoreboard players get @s arrows_ice
execute if score @s arrows_selected matches 5 store result score arrowselectamount dummy run scoreboard players get @s arrows_bomb
execute unless score @s dummy = arrowselectamount dummy run clear @s arrow
execute if score @s arrows_selected matches 1.. unless score @s dummy = arrowselectamount dummy run function alttp:pin/arrows
execute if score @s arrows_selected matches 1.. if score @s dummy matches 0 run function alttp:pin/arrows
execute if entity @s[nbt={SelectedItem:{id:"minecraft:arrow"},SelectedItemSlot:8}] run function alttp:pin/arrows
execute if entity @s[nbt={SelectedItem:{id:"minecraft:spectral_arrow"},SelectedItemSlot:8}] run function alttp:pin/arrows
execute unless entity @s[nbt={SelectedItemSlot:8}] if entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:8b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Out of arrows!"}',"minecraft:custom_model_data":1}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 1 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,components:{"minecraft:custom_model_data":2}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 2 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,components:{"minecraft:custom_model_data":3}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 3 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,components:{"minecraft:custom_model_data":4}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 4 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,components:{"minecraft:custom_model_data":5}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 5 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,components:{"minecraft:custom_model_data":6}}]}] run function alttp:pin/arrows

execute if score @p bombs > @p bombsmax store result score @p bombs run scoreboard players get @p bombsmax

#BOW
execute unless score . thirdperson matches 1 if score @s hasbow matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:1b}]}] run clear @s bow
execute unless score . thirdperson matches 1 if score @s hasbow matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:1b}]}] run item replace entity @s hotbar.1 with bow
execute unless score . thirdperson matches 1 if score @s hasbow matches 1 run item replace entity @s hotbar.1 with bow

execute if score . thirdperson matches 1 if score @s hasbow matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:1b}]}] run clear @s ender_eye[custom_model_data=1]
execute if score . thirdperson matches 1 if score @s hasbow matches 1 run item replace entity @s hotbar.1 with minecraft:ender_eye[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"Bow","color":"white","italic":false}'] 1

execute unless score @s spw_1 matches 0 run function alttp:spw/display_1
execute unless score @s spw_2 matches 0 run function alttp:spw/display_2
execute unless score @s spw_3 matches 0 run function alttp:spw/display_3

#SPECIAL WEAPON SELECTION CLICKING
execute unless score @s spw_s matches 0 run function alttp:spw/tick_p1

#MAX ARROW BOMB
execute if score @s arrows > @s arrowsmax run execute store result score @s arrows run scoreboard players get @s arrowsmax
execute if score @s arrows_silver > @s arrowsmax run execute store result score @s arrows_silver run scoreboard players get @s arrowsmax
execute if score @s arrows_fire > @s arrowsmax run execute store result score @s arrows_fire run scoreboard players get @s arrowsmax
execute if score @s arrows_ice > @s arrowsmax run execute store result score @s arrows_ice run scoreboard players get @s arrowsmax

#EMPTY SPW
execute unless score @s spw_1 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:2b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Empty"}',"minecraft:lore":['{"color":"white","italic":false,"text":"No special weapon in slot 1."}']}}]}] run clear @s minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 1.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}']
execute unless score @s spw_1 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:2b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Empty"}',"minecraft:lore":['{"color":"white","italic":false,"text":"No special weapon in slot 1."}']}}]}] run item replace entity @s hotbar.2 with minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 1.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}'] 1
execute unless score @s spw_1 matches 1.. run item replace entity @s hotbar.2 with minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 1.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}'] 1

execute unless score @s spw_2 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:3b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Empty"}',"minecraft:lore":['{"color":"white","italic":false,"text":"No special weapon in slot 2."}']}}]}] run clear @s minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 2.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}']
execute unless score @s spw_2 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:3b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Empty"}',"minecraft:lore":['{"color":"white","italic":false,"text":"No special weapon in slot 2."}']}}]}] run item replace entity @s hotbar.3 with minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 2.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}'] 1
execute unless score @s spw_2 matches 1.. run item replace entity @s hotbar.3 with minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 2.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}'] 1

execute unless score @s spw_3 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:4b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Empty"}',"minecraft:lore":['{"color":"white","italic":false,"text":"No special weapon in slot 3."}']}}]}] run clear @s minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 3.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}']
execute unless score @s spw_3 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:4b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Empty"}',"minecraft:lore":['{"color":"white","italic":false,"text":"No special weapon in slot 3."}']}}]}] run item replace entity @s hotbar.4 with minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 3.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}'] 1
execute unless score @s spw_3 matches 1.. run item replace entity @s hotbar.4 with minecraft:barrier[minecraft:lore=['{"text":"No special weapon in slot 3.","color":"white","italic":false}'],minecraft:custom_name='{"text":"Empty","color":"red","italic":false}'] 1

#ARMOR
execute if score @s armortier matches 1 run item replace entity @s armor.chest with air

execute if score @s armortier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:iron_chestplate",count:1,Slot:102b,components:{"minecraft:custom_name":'{"color":"blue","italic":false,"text":"Blue Mail"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Found in the Ice Palace."}']}}]}] run clear @s iron_chestplate
execute if score @s armortier matches 2 run item replace entity @s armor.chest with minecraft:iron_chestplate[minecraft:lore=['{"text":"Found in the Ice Palace.","color":"white","italic":false}'],minecraft:unbreakable={},minecraft:custom_name='{"text":"Blue Mail","color":"blue","italic":false}'] 1

execute if score @s armortier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_chestplate",count:1,Slot:102b,components:{"minecraft:custom_name":'{"color":"red","italic":false,"text":"Red Mail"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Found in Ganon\'s Tower."}']}}]}] run clear @s diamond_chestplate
execute if score @s armortier matches 3 run item replace entity @s armor.chest with minecraft:diamond_chestplate[minecraft:lore=['{"text":"Found in Ganon\'s Tower.","color":"white","italic":false}'],minecraft:unbreakable={},minecraft:custom_name='{"text":"Red Mail","color":"red","italic":false}'] 1

#MAP ITEM
execute unless entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Slot:6b,components:{"minecraft:custom_name":'{"color":"gray","italic":false,"text":"Map"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Click to open your map"}']}}]}] unless score @s spw_s matches 1.. run clear @s map
execute unless entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Slot:6b,components:{"minecraft:custom_name":'{"color":"gray","italic":false,"text":"Map"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Click to open your map"}']}}]}] unless score @s spw_s matches 1.. unless score @s mapcooldown matches 1.. unless score . intercool matches 1.. run function alttp:mapping_start
execute unless score @s spw_s matches 1.. run item replace entity @s hotbar.6 with minecraft:filled_map[minecraft:lore=['{"text":"Click to open your map","color":"white","italic":false}'],minecraft:custom_name='{"text":"Map","color":"gray","italic":false}'] 1

execute if score @s mapcooldown matches 1.. run scoreboard players remove @s mapcooldown 1

#Quests button
execute if score @s hasquestbook matches 1 unless score @s spw_s matches 1.. unless score . intercool matches 1.. unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:7b,components:{"minecraft:custom_name":'{"color":"blue","italic":false,"text":"Quest Book"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Right-click to view your quests!"}']}}]}] run clear @p carrot_on_a_stick
execute if score @s hasquestbook matches 1 unless score @s spw_s matches 1.. run item replace entity @p hotbar.7 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=316,minecraft:lore=['{"text":"Right-click to view your quests!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Quest Book","color":"blue","italic":false}'] 1

#Inventory button
execute unless score @s spw_s matches 1.. unless score . intercool matches 1.. unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Inventory"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Right-click to open your inventory!"}']}}]}] run clear @p carrot_on_a_stick[custom_model_data=32]
execute unless score @s spw_s matches 1.. run item replace entity @p hotbar.5 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=32,minecraft:lore=['{"text":"Right-click to open your inventory!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Inventory","color":"gold","italic":false}'] 1

##No gameplay
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.1 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.2 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.3 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.4 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.5 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.6 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.7 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.8 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']