execute if score @s spw_1 matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Lamp","color":"#fcba03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Lamp","color":"#fcba03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3}
execute if score @s spw_1 matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Lamp","color":"#fcba03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Lamp","color":"#fcba03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3} 1
execute if score @s spw_1 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Lamp","color":"#fcba03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3} 1
execute if score @s spw_e_1 matches 1 if score @s spw_1 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Lamp","color":"#fcba03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3} 1

execute if score @s boomerangtier matches 1 unless score @s spw_c_2 matches 1 if score @s spw_1 matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Boomerang","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw!","color":"white","italic":false}']},CustomModelData:33}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Boomerang","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw!","color":"white","italic":false}']},CustomModelData:33} 1
execute if score @s boomerangtier matches 1 unless score @s spw_c_2 matches 1 if score @s spw_1 matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Boomerang","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw!","color":"white","italic":false}']},CustomModelData:33}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Boomerang","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw!","color":"white","italic":false}']},CustomModelData:33} 1
execute if score @s boomerangtier matches 1 if score @s spw_1 matches 2 unless score @s spw_c_2 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Boomerang","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw!","color":"white","italic":false}']},CustomModelData:33} 1
execute if score @s boomerangtier matches 1 if score @s spw_1 matches 2 if score @s spw_c_2 matches 1 run clear @s carrot_on_a_stick{CustomModelData:33}

execute if score @s spw_1 matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']}} 1
execute if score @s spw_1 matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']}}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']},CustomModelData:7} 1
execute unless score @s spw_c_3 matches 1 if score @s spw_1 matches 3 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']},CustomModelData:7} 1
execute if score @s spw_c_3 matches 1 if score @s spw_1 matches 3 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']},CustomModelData:38}
execute if score @s spw_e_3 matches 1 unless score @s spw_c_3 matches 1 if score @s spw_1 matches 3 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']},CustomModelData:7} 1

execute if score @s spw_1 matches 4 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:2b,tag:{display:{Name:'{"text":"Titan\'s Mitt","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift the heaviest!","color":"white","italic":false}']},CustomModelData:63}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Titan\'s Mitt","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift the heaviest!","color":"white","italic":false}']},CustomModelData:63}
execute if score @s spw_1 matches 4 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:2b,tag:{display:{Name:'{"text":"Titan\'s Mitt","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift the heaviest!","color":"white","italic":false}']},CustomModelData:63}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Titan\'s Mitt","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift the heaviest!","color":"white","italic":false}']},CustomModelData:63} 1
execute if score @s spw_1 matches 4 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Titan\'s Mitt","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift the heaviest!","color":"white","italic":false}']},CustomModelData:63} 1

execute if score @s spw_1 matches 5 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9} 1
execute if score @s spw_1 matches 5 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9} 1
execute if score @s spw_1 matches 5 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9} 1
execute if score @s spw_e_5 matches 1 if score @s spw_1 matches 5 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9} 1

execute if score @s spw_1 matches 6 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']}} 1
execute unless score @s spw_c_6 matches 1 if score @s spw_1 matches 6 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']},CustomModelData:1}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']},CustomModelData:1} 1
execute unless score @s spw_c_6 matches 1 if score @s spw_1 matches 6 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']},CustomModelData:1} 1
execute if score @s spw_c_6 matches 1 if score @s spw_1 matches 6 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']},CustomModelData:39} 1
execute if score @s spw_e_6 matches 1 unless score @s spw_c_6 matches 1 if score @s spw_1 matches 6 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']},CustomModelData:1} 1

execute if score @s spw_1 matches 7 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']}} 1
execute unless score @s spw_c_7 matches 1 if score @s spw_1 matches 7 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']},CustomModelData:2}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']},CustomModelData:2} 1
execute unless score @s spw_c_7 matches 1 if score @s spw_1 matches 7 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']},CustomModelData:2} 1
execute if score @s spw_c_7 matches 1 if score @s spw_1 matches 7 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']},CustomModelData:40} 1
execute if score @s spw_e_7 matches 1 unless score @s spw_c_7 matches 1 if score @s spw_1 matches 7 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']},CustomModelData:2} 1

execute if score @s spw_1 matches 8 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Book of Mudora","color":"dark_green","italic":false}',Lore:['{"text":"A guide to ancient Hylian","color":"white","italic":false}']},CustomModelData:10}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Book of Mudora","color":"dark_green","italic":false}',Lore:['{"text":"A guide to ancient Hylian","color":"white","italic":false}']},CustomModelData:10} 1
execute if score @s spw_1 matches 8 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Book of Mudora","color":"dark_green","italic":false}',Lore:['{"text":"A guide to ancient Hylian","color":"white","italic":false}']},CustomModelData:10}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Book of Mudora","color":"dark_green","italic":false}',Lore:['{"text":"A guide to ancient Hylian","color":"white","italic":false}']},CustomModelData:10} 1
execute if score @s spw_1 matches 8 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Book of Mudora","color":"dark_green","italic":false}',Lore:['{"text":"A guide to ancient Hylian","color":"white","italic":false}']},CustomModelData:10} 1

execute if score @s spw_1 matches 9 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Ocarina","color":"blue","italic":false}',Lore:['{"text":"Sing the Flute boy\'s song","color":"white","italic":false}']},CustomModelData:11}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Ocarina","color":"blue","italic":false}',Lore:['{"text":"Sing the Flute boy\'s song","color":"white","italic":false}']},CustomModelData:11} 1
execute if score @s spw_1 matches 9 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Ocarina","color":"blue","italic":false}',Lore:['{"text":"Sing the Flute boy\'s song","color":"white","italic":false}']},CustomModelData:11}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ocarina","color":"blue","italic":false}',Lore:['{"text":"Sing the Flute boy\'s song","color":"white","italic":false}']},CustomModelData:11} 1
execute if score @s spw_1 matches 9 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ocarina","color":"blue","italic":false}',Lore:['{"text":"Sing the Flute boy\'s song","color":"white","italic":false}']},CustomModelData:11} 1

execute if score @s spw_1 matches 10 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']}} 1
execute unless score @s spw_c_10 matches 1 if score @s spw_1 matches 10 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']},CustomModelData:12}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']},CustomModelData:12} 1
execute unless score @s spw_c_10 matches 1 if score @s spw_1 matches 10 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']},CustomModelData:12} 1
execute if score @s spw_c_10 matches 1 if score @s spw_1 matches 10 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']},CustomModelData:41} 1
execute if score @s spw_e_10 matches 1 unless score @s spw_c_10 matches 1 if score @s spw_1 matches 10 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']},CustomModelData:12} 1

execute if score @s spw_1 matches 11 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']}} 1
execute unless score @s spw_c_11 matches 1 if score @s spw_1 matches 11 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:13}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:13} 1
execute unless score @s spw_c_11 matches 1 if score @s spw_1 matches 11 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:13} 1
execute if score @s spw_c_11 matches 1 if score @s spw_1 matches 11 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:43}
execute if score @s spw_e_11 matches 1 unless score @s spw_c_11 matches 1 if score @s spw_1 matches 11 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:13} 1

execute if score @s spw_1 matches 12 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']}} 1
execute unless score @s spw_c_12 matches 1 if score @s spw_1 matches 12 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']},CustomModelData:14}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']},CustomModelData:14} 1
execute unless score @s spw_c_12 matches 1 if score @s spw_1 matches 12 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']},CustomModelData:14} 1
execute if score @s spw_c_12 matches 1 if score @s spw_1 matches 12 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']},CustomModelData:42} 1
execute if score @s spw_e_12 matches 1 unless score @s spw_c_12 matches 1 if score @s spw_1 matches 12 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']},CustomModelData:14} 1

execute if score @s spw_1 matches 13 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Bug-Catching Net","color":"yellow","italic":false}',Lore:['{"text":"Right-click to catch!","color":"white","italic":false}']},CustomModelData:44}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Bug-Catching Net","color":"yellow","italic":false}',Lore:['{"text":"Right-click to catch!","color":"white","italic":false}']},CustomModelData:44} 1
execute unless score @s spw_c_13 matches 1 if score @s spw_1 matches 13 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Bug-Catching Net","color":"yellow","italic":false}',Lore:['{"text":"Right-click to catch!","color":"white","italic":false}']},CustomModelData:44}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Bug-Catching Net","color":"yellow","italic":false}',Lore:['{"text":"Right-click to catch!","color":"white","italic":false}']},CustomModelData:44} 1
execute unless score @s spw_c_13 matches 1 if score @s spw_1 matches 13 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Bug-Catching Net","color":"yellow","italic":false}',Lore:['{"text":"Right-click to catch!","color":"white","italic":false}']},CustomModelData:44} 1
execute if score @s spw_c_13 matches 1 if score @s spw_1 matches 13 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Bug-Catching Net","color":"yellow","italic":false}',Lore:['{"text":"Right-click to catch!","color":"white","italic":false}']},CustomModelData:45} 1

execute if score @s boomerangtier matches 2..3 unless score @s spw_c_2 matches 1 if score @s spw_1 matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53} 1
execute if score @s boomerangtier matches 2..3 unless score @s spw_c_2 matches 1 if score @s spw_1 matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53} 1
execute if score @s boomerangtier matches 2..3 unless score @s spw_c_2 matches 1 if score @s spw_1 matches 2 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53} 1
execute if score @s boomerangtier matches 2..3 if score @s spw_c_2 matches 1 if score @s spw_1 matches 2 run clear @s carrot_on_a_stick{CustomModelData:53}
execute if score @s boomerangtier matches 3 unless score @s spw_c_2 matches 1 if score @s spw_1 matches 2 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53} 1

execute if score @s spw_1 matches 14 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Power Glove","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift heavy rocks!","color":"white","italic":false}']},CustomModelData:54}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Power Glove","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift heavy rocks!","color":"white","italic":false}']},CustomModelData:54} 1
execute if score @s spw_1 matches 14 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Power Glove","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift heavy rocks!","color":"white","italic":false}']},CustomModelData:54}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Power Glove","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift heavy rocks!","color":"white","italic":false}']},CustomModelData:54} 1
execute if score @s spw_1 matches 14 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Power Glove","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift heavy rocks!","color":"white","italic":false}']},CustomModelData:54} 1
execute if score @s spw_e_14 matches 1 if score @s spw_1 matches 14 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Power Glove","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift heavy rocks!","color":"white","italic":false}']},CustomModelData:54} 1

execute if score @s spw_1 matches 15 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']}}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']}} 1
execute if score @s spw_1 matches 15 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']},CustomModelData:58}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']},CustomModelData:58} 1
execute unless score @s spw_c_15 matches 1 if score @s spw_1 matches 15 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']},CustomModelData:58} 1
execute if score @s spw_c_15 matches 1 if score @s spw_1 matches 15 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']},CustomModelData:59} 1
execute if score @s spw_e_15 matches 1 unless score @s spw_c_15 matches 1 if score @s spw_1 matches 15 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']},CustomModelData:58} 1

execute if score @s spw_1 matches 16 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Cane of Somaria","color":"dark_red","italic":false}',Lore:['{"text":"Right-click to create a block!","color":"white","italic":false}']},CustomModelData:60}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Cane of Somaria","color":"dark_red","italic":false}',Lore:['{"text":"Right-click to create a block!","color":"white","italic":false}']},CustomModelData:60} 1
execute if score @s spw_1 matches 16 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Cane of Somaria","color":"dark_red","italic":false}',Lore:['{"text":"Right-click to create a block!","color":"white","italic":false}']},CustomModelData:60}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Cane of Somaria","color":"dark_red","italic":false}',Lore:['{"text":"Right-click to create a block!","color":"white","italic":false}']},CustomModelData:60} 1
execute if score @s spw_1 matches 16 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Cane of Somaria","color":"dark_red","italic":false}',Lore:['{"text":"Right-click to create a block!","color":"white","italic":false}']},CustomModelData:60} 1
execute if score @s spw_e_16 matches 1 if score @s spw_1 matches 16 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Cane of Somaria","color":"dark_red","italic":false}',Lore:['{"text":"Right-click to create a block!","color":"white","italic":false}']},CustomModelData:60} 1

execute if score @s spw_1 matches 17 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Cane of Byrna","color":"blue","italic":false}',Lore:['{"text":"Right-click to toggle forcefield!","color":"white","italic":false}']},CustomModelData:61}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Cane of Byrna","color":"blue","italic":false}',Lore:['{"text":"Right-click to toggle forcefield!","color":"white","italic":false}']},CustomModelData:61} 1
execute if score @s spw_1 matches 17 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Cane of Byrna","color":"blue","italic":false}',Lore:['{"text":"Right-click to toggle forcefield!","color":"white","italic":false}']},CustomModelData:61}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Cane of Byrna","color":"blue","italic":false}',Lore:['{"text":"Right-click to toggle forcefield!","color":"white","italic":false}']},CustomModelData:61} 1
execute if score @s spw_1 matches 17 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Cane of Byrna","color":"blue","italic":false}',Lore:['{"text":"Right-click to toggle forcefield!","color":"white","italic":false}']},CustomModelData:61} 1
execute if score @s spw_e_17 matches 1 if score @s spw_1 matches 17 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Cane of Byrna","color":"blue","italic":false}',Lore:['{"text":"Right-click to toggle forcefield!","color":"white","italic":false}']},CustomModelData:61} 1

execute if score @s spw_1 matches 18 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Magic Hammer","color":"red","italic":false}',Lore:['{"text":"Right-click to smash!","color":"white","italic":false}']},CustomModelData:62}}]}] run clear @s carrot_on_a_stick{display:{Name:'{"text":"Magic Hammer","color":"red","italic":false}',Lore:['{"text":"Right-click to smash!","color":"white","italic":false}']},CustomModelData:62} 1
execute if score @s spw_1 matches 18 unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,Count:1b,tag:{display:{Name:'{"text":"Magic Hammer","color":"red","italic":false}',Lore:['{"text":"Right-click to smash!","color":"white","italic":false}']},CustomModelData:62}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magic Hammer","color":"red","italic":false}',Lore:['{"text":"Right-click to smash!","color":"white","italic":false}']},CustomModelData:62} 1
execute if score @s spw_1 matches 18 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Magic Hammer","color":"red","italic":false}',Lore:['{"text":"Right-click to smash!","color":"white","italic":false}']},CustomModelData:62} 1
execute if score @s spw_e_18 matches 1 if score @s spw_1 matches 18 run item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{}],display:{Name:'{"text":"Magic Hammer","color":"red","italic":false}',Lore:['{"text":"Right-click to smash!","color":"white","italic":false}']},CustomModelData:62} 1

execute unless entity @s[tag=bomb] if score @s spw_1 matches 19 store result score bombinv dummy run clear @p minecraft:carrot_on_a_stick{CustomModelData:284} 0
execute unless entity @s[tag=bomb] if score @s spw_1 matches 19 unless score @s bombs = bombinv dummy if score @p bombs matches 1.. run clear @p minecraft:carrot_on_a_stick{CustomModelData:284}
execute unless entity @s[tag=bomb] if score @s spw_1 matches 19 if score @p bombs matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Bomb","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw a bomb!","color":"white","italic":false}']},CustomModelData:284,active:0}}]}] store result storage macro bombs int 1 run scoreboard players get @s bombs
execute unless entity @s[tag=bomb] if score @s spw_1 matches 19 if score @p bombs matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b,tag:{display:{Name:'{"text":"Bomb","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw a bomb!","color":"white","italic":false}']},CustomModelData:284,active:0}}]}] run function alttp:bombs_1_macro with storage macro
execute unless entity @s[tag=bomb] if score @s spw_1 matches 19 if score @p bombs matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Count:1b,Slot:2b,tag:{display:{Name:'{"text":"Out of bombs!","color":"dark_red","italic":false}',Lore:['{"text":"You\'re all out of bombs to throw!","color":"white","italic":false}']},CustomModelData:2}}]}] run function alttp:bombs_1_macro with storage macro
execute if entity @s[tag=bomb] if score @s spw_1 matches 19 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:2b,tag:{display:{Name:'{"text":"Active bomb","color":"dark_red","italic":false}',Lore:['{"text":"Quick, right-click to throw it away!","color":"white","italic":false}']},CustomModelData:284,active:1}}]}] run clear @p carrot_on_a_stick{CustomModelData:284}
execute if entity @s[tag=bomb] if score @s spw_1 matches 19 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:2b,tag:{display:{Name:'{"text":"Active bomb","color":"dark_red","italic":false}',Lore:['{"text":"Quick, right-click to throw it away!","color":"white","italic":false}']},CustomModelData:284,active:1}}]}] run item replace entity @p hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Active bomb","color":"dark_red","italic":false}',Lore:['{"text":"Quick, right-click to throw it away!","color":"white","italic":false}']},CustomModelData:284,active:1} 1

execute if score @s spw_1 matches 20 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:2b,tag:{display:{Name:'{"text":"Shovel","color":"blue","italic":false}',Lore:['{"text":"Right-click to dig!","color":"white","italic":false}']},CustomModelData:52}}]}] run clear @p carrot_on_a_stick{CustomModelData:52}
execute if score @s spw_1 matches 20 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:2b,tag:{display:{Name:'{"text":"Shovel","color":"blue","italic":false}',Lore:['{"text":"Right-click to dig!","color":"white","italic":false}']},CustomModelData:52}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Shovel","color":"blue","italic":false}',Lore:['{"text":"Right-click to dig!","color":"white","italic":false}']},CustomModelData:52} 1