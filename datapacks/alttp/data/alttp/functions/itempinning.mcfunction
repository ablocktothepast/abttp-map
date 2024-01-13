execute if score @s swordtier matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword",Slot:0b,tag:{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts"],display:{Name:'{"text":"Fighter\'s Sword","italic":false}',Lore:['{"text":"Given to you by your uncle.","color":"white","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword",Slot:0b,tag:{display:{Name:'{"text":"Fighter\'s Sword","italic":false}',Lore:['{"text":"Given to you by your uncle.","color":"white","italic":false}']}}}]}] run clear @s stone_sword
execute if score @s swordtier matches 1 run item replace entity @s hotbar.0 with stone_sword{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts"],display:{Name:'{"text":"Fighter\'s Sword","italic":false}',Lore:['{"text":"Given to you by your uncle.","color":"white","italic":false}']}} 1

execute if score @s swordtier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b,tag:{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts"],display:{Name:'{"text":"Master Sword","color":"gold","italic":false}',Lore:['{"text":"Found in the lost woods.","color":"white","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b,tag:{display:{Name:'{"text":"Master Sword","color":"gold","italic":false}',Lore:['{"text":"Found in the lost woods.","color":"white","italic":false}']}}}]}] run clear @s iron_sword
execute if score @s swordtier matches 2 run item replace entity @s hotbar.0 with iron_sword{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts"],display:{Name:'{"text":"Master Sword","color":"gold","italic":false}',Lore:['{"text":"Found in the lost woods.","color":"white","italic":false}']}} 1

execute if score @s swordtier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_sword",Slot:0b,tag:{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts"],display:{Name:'{"text":"Tempered Sword","color":"gold","italic":false}',Lore:['{"text":"Tempered by the Dwarven Swordsmiths.","color":"white","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_sword",Slot:0b,tag:{display:{Name:'{"text":"Tempered Sword","color":"gold","italic":false}',Lore:['{"text":"Tempered by the Dwarven Swordsmiths.","color":"white","italic":false}']}}}]}] run clear @s diamond_sword
execute if score @s swordtier matches 3 run item replace entity @s hotbar.0 with diamond_sword{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts"],display:{Name:'{"text":"Tempered Sword","color":"gold","italic":false}',Lore:['{"text":"Tempered by the Dwarven Swordsmiths.","color":"white","italic":false}']}} 1

execute if score @s swordtier matches 4 unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b,tag:{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts","suspicious_gravel"],display:{Name:'{"text":"Golden Sword","italic":false,"color":"gold"}',Lore:['{"text":"The most powerful of them all.","color":"white","italic":false}']}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b,tag:{display:{Name:'{"text":"Golden Sword","italic":false,"color":"gold"}',Lore:['{"text":"The most powerful of them all.","color":"white","italic":false}']}}}]}] run clear @s netherite_sword
execute if score @s swordtier matches 4 run item replace entity @s hotbar.0 with netherite_sword{CanDestroy:["minecraft:sweet_berry_bush","nether_sprouts","suspicious_gravel"],display:{Name:'{"text":"Golden Sword","italic":false,"color":"gold"}',Lore:['{"text":"The most powerful of them all.","color":"white","italic":false}']}} 1

execute if score @s bushminecool matches 1.. run item replace entity @s hotbar.0 with air

execute if score @s shieldtier matches 0 run item replace entity @s weapon.offhand with air

execute if score @s shieldtier matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{CustomModelData:1,display:{Name:'{"text":"Fighter\'s Shield","italic":false}',Lore:['{"text":"Given to you by your uncle.","color":"white","italic":false}']}}}]}] run clear @s shield{CustomModelData:1}
execute if score @s shieldtier matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{CustomModelData:1,display:{Name:'{"text":"Fighter\'s Shield","italic":false}',Lore:['{"text":"Given to you by your uncle.","color":"white","italic":false}']}}}]}] run item replace entity @s weapon.offhand with shield{Unbreakable:1b,CustomModelData:1,display:{Name:'{"text":"Fighter\'s Shield","italic":false}',Lore:['{"text":"Given to you by your uncle.","color":"white","italic":false}']}} 1
execute if score @s shieldtier matches 1 run item replace entity @s weapon.offhand with shield{Unbreakable:1b,CustomModelData:1,display:{Name:'{"text":"Fighter\'s Shield","italic":false}',Lore:['{"text":"Given to you by your uncle.","color":"white","italic":false}']}} 1

execute if score @s shieldtier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{display:{Name:'{"text":"Fire Shield","color":"#FF623B","italic":false}',Lore:['{"text":"Protects you from fire!","color":"white","italic":false}']},CustomModelData:2}}]}] run clear @s shield{CustomModelData:2}
execute if score @s shieldtier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{display:{Name:'{"text":"Fire Shield","color":"#FF623B","italic":false}',Lore:['{"text":"Protects you from fire!","color":"white","italic":false}']},CustomModelData:2}}]}] run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Fire Shield","color":"#FF623B","italic":false}',Lore:['{"text":"Protects you from fire!","color":"white","italic":false}']},CustomModelData:2} 1
execute if score @s shieldtier matches 2 run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Fire Shield","color":"#FF623B","italic":false}',Lore:['{"text":"Protects you from fire!","color":"white","italic":false}']},CustomModelData:2} 1

execute if score @s shieldtier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{display:{Name:'{"text":"Mirror Shield","color":"#1F69FF","italic":false}',Lore:['{"text":"Protects you from lasers!","color":"white","italic":false}']},CustomModelData:3}}]}] run clear @s shield{CustomModelData:3}
execute if score @s shieldtier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:shield",Count:1b,Slot:-106b,tag:{display:{Name:'{"text":"Mirror Shield","color":"#1F69FF","italic":false}',Lore:['{"text":"Protects you from lasers!","color":"white","italic":false}']},CustomModelData:3}}]}] run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Mirror Shield","color":"#1F69FF","italic":false}',Lore:['{"text":"Protects you from lasers!","color":"white","italic":false}']},CustomModelData:3} 1
execute if score @s shieldtier matches 3 run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Mirror Shield","color":"#1F69FF","italic":false}',Lore:['{"text":"Protects you from lasers!","color":"white","italic":false}']},CustomModelData:3} 1

#ARROW AND BOMB FIXING
execute if score @s bombused matches 1.. unless entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{pin:1}}},distance=..2] run scoreboard players set @s bombused 0

execute if score @s shotarrow matches 1.. run function alttp:arrowshot

#ARROW
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
execute if score @s arrows_selected matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:8b,tag:{CustomModelData:1,display:{Name:'{"text":"Out of arrows!","color":"red","italic":false}'}}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 1 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,tag:{CustomModelData:2}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 2 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,tag:{CustomModelData:3}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 3 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,tag:{CustomModelData:4}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 4 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,tag:{CustomModelData:5}}]}] run function alttp:pin/arrows
execute if score @s arrows_selected matches 5 if entity @s[nbt={SelectedItemSlot:8}] unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:8b,tag:{CustomModelData:6}}]}] run function alttp:pin/arrows

#BOMB
execute store result score @s dummy run data get entity @s Inventory[{Slot:7b}].tag.amount
execute unless score @s dummy = @s bombs run clear @s carrot_on_a_stick{pin:1}
execute unless score @s dummy = @s bombs run function alttp:pin/bombs
execute if entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:7b,tag:{CustomModelData:2,display:{Name:'{"text":"Out of bombs!","color":"red","italic":false}'}}}]}] if score @s bombs matches 1.. run function alttp:pin/bombs

#BOW
execute unless score . thirdperson matches 1 if score @s hasbow matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:1b}]}] run clear @s bow
execute unless score . thirdperson matches 1 if score @s hasbow matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:1b}]}] run item replace entity @s hotbar.1 with bow
execute unless score . thirdperson matches 1 if score @s hasbow matches 1 run item replace entity @s hotbar.1 with bow

execute if score . thirdperson matches 1 if score @s hasbow matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye",Slot:1b}]}] run clear @s ender_eye{CustomModelData:1}
execute if score . thirdperson matches 1 if score @s hasbow matches 1 run item replace entity @s hotbar.1 with ender_eye{display:{Name:'{"text":"Bow","color":"white","italic":false}'},CustomModelData:1} 1

#Empty bombs
execute if score @s bombs matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:7b,tag:{CustomModelData:2,display:{Name:'{"text":"Out of bombs!","color":"red","italic":false}'}}}]}] run clear @s barrier{display:{Name:'{"text":"Out of bombs!","color":"red","italic":false}'}} 1
execute if score @s bombs matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:7b,tag:{CustomModelData:2,display:{Name:'{"text":"Out of bombs!","color":"red","italic":false}'}}}]}] run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Out of bombs!","color":"red","italic":false}'},CustomModelData:2} 1
execute if score @s bombs matches 0 run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Out of bombs!","color":"red","italic":false}'},CustomModelData:2} 1

#SPECIAL WEAPONS
#detection
execute unless score @s mapcooldown matches 1.. if score @s spw_s matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:turtle_scute",Slot:29b,tag:{display:{Name:'{"text":"Edit Special Weapon 1","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13}}]}] run function alttp:spw/click_1
execute unless score @s mapcooldown matches 1.. if score @s spw_s matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:turtle_scute",Slot:30b,tag:{display:{Name:'{"text":"Edit Special Weapon 2","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13}}]}] run function alttp:spw/click_2
execute unless score @s mapcooldown matches 1.. if score @s spw_s matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:turtle_scute",Slot:31b,tag:{display:{Name:'{"text":"Edit Special Weapon 3","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13}}]}] run function alttp:spw/click_3

#display
execute if score @s spw_s matches 0 run item replace entity @s inventory.20 with turtle_scute{display:{Name:'{"text":"Edit Special Weapon 1","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13} 1
execute if score @s spw_s matches 0 run item replace entity @s inventory.21 with turtle_scute{display:{Name:'{"text":"Edit Special Weapon 2","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13} 1
execute if score @s spw_s matches 0 run item replace entity @s inventory.22 with turtle_scute{display:{Name:'{"text":"Edit Special Weapon 3","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13} 1

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
execute if score @s bombs > @s bombsmax run execute store result score @s bombs run scoreboard players get @s bombsmax

#EMPTY SPW
execute unless score @s spw_1 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:2b,tag:{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 1.","color":"white","italic":false}']}}}]}] run clear @s barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 1.","color":"white","italic":false}']}} 1
execute unless score @s spw_1 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:2b,tag:{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 1.","color":"white","italic":false}']}}}]}] run item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 1.","color":"white","italic":false}']}} 1
execute unless score @s spw_1 matches 1.. run item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 1.","color":"white","italic":false}']}} 1

execute unless score @s spw_2 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:3b,tag:{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 2.","color":"white","italic":false}']}}}]}] run clear @s barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 2.","color":"white","italic":false}']}} 1
execute unless score @s spw_2 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:3b,tag:{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 2.","color":"white","italic":false}']}}}]}] run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 2.","color":"white","italic":false}']}} 1
execute unless score @s spw_2 matches 1.. run item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 2.","color":"white","italic":false}']}} 1

execute unless score @s spw_3 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:4b,tag:{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 3.","color":"white","italic":false}']}}}]}] run clear @s barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 3.","color":"white","italic":false}']}} 1
execute unless score @s spw_3 matches 1.. unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:4b,tag:{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 3.","color":"white","italic":false}']}}}]}] run item replace entity @s hotbar.4 with barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 3.","color":"white","italic":false}']}} 1
execute unless score @s spw_3 matches 1.. run item replace entity @s hotbar.4 with barrier{display:{Name:'{"text":"Empty","color":"red","italic":false}',Lore:['{"text":"No special weapon in slot 3.","color":"white","italic":false}']}} 1

execute unless score oldrupee dummy = @p rupees run function alttp:pin_rupees
execute store result score oldrupee dummy run scoreboard players get @p rupees
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run function alttp:pin_rupees

#ARMOR
execute if score @s armortier matches 1 run item replace entity @s armor.chest with air

execute if score @s armortier matches 2 unless entity @s[nbt={Inventory:[{id:"minecraft:iron_chestplate",Count:1b,Slot:102b,tag:{display:{Name:'{"text":"Blue Mail","color":"blue","italic":false}',Lore:['{"text":"Found in the Ice Palace.","color":"white","italic":false}']}}}]}] run clear @s iron_chestplate
execute if score @s armortier matches 2 run item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b,display:{Name:'{"text":"Blue Mail","color":"blue","italic":false}',Lore:['{"text":"Found in the Ice Palace.","color":"white","italic":false}']}} 1

execute if score @s armortier matches 3 unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Count:1b,Slot:102b,tag:{display:{Name:'{"text":"Red Mail","color":"red","italic":false}',Lore:['{"text":"Found in Ganon\'s Tower.","color":"white","italic":false}']}}}]}] run clear @s diamond_chestplate
execute if score @s armortier matches 3 run item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1b,display:{Name:'{"text":"Red Mail","color":"red","italic":false}',Lore:['{"text":"Found in Ganon\'s Tower.","color":"white","italic":false}']}} 1

#MAP ITEM
execute unless entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Slot:35b,tag:{display:{Name:'{"text":"Map","color":"gray","italic":false}',Lore:['{"text":"Click to open your map","color":"white","italic":false}']}}}]}] unless score @s spw_s matches 1.. run clear @s map
execute unless entity @s[nbt={Inventory:[{id:"minecraft:filled_map",Slot:35b,tag:{display:{Name:'{"text":"Map","color":"gray","italic":false}',Lore:['{"text":"Click to open your map","color":"white","italic":false}']}}}]}] unless score @s spw_s matches 1.. unless score @s mapcooldown matches 1.. unless score . intercool matches 1.. run function alttp:mapping_start
execute unless score @s spw_s matches 1.. run item replace entity @s inventory.26 with filled_map{display:{Name:'{"text":"Map","color":"gray","italic":false}',Lore:['{"text":"Click to open your map","color":"white","italic":false}']}} 1

execute if score @s mapcooldown matches 1.. run scoreboard players remove @s mapcooldown 1

#Quests button
execute unless score @s spw_s matches 1.. unless score . intercool matches 1.. unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b,tag:{display:{Name:'{"text":"Quest Book","color":"blue","italic":false}',Lore:['{"text":"Right-click to view your quests!","color":"white","italic":false}']}}}]}] run clear @p carrot_on_a_stick
execute unless score @s spw_s matches 1.. run item replace entity @p hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Quest Book","color":"blue","italic":false}',Lore:['{"text":"Right-click to view your quests!","color":"white","italic":false}']},CustomModelData:316} 1

##No gameplay
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
execute if score . gameplay matches 0 run item replace entity @p[gamemode=adventure] hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}