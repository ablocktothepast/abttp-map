execute positioned ^ ^ ^2 if entity @e[type=bee,tag=bee,distance=..2] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Empty Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Used to store many things.","color":"white","italic":false}']},CustomModelData:46}}]}] run function alttp:give/bee_bottle

execute positioned ^ ^ ^2 if entity @e[type=item_display,tag=fairy,distance=..2] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Empty Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Used to store many things.","color":"white","italic":false}']},CustomModelData:46}}]}] run function alttp:give/fairy_bottle

execute positioned ^ ^ ^2 if entity @e[type=bee,tag=golden_bee,distance=..2] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Empty Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Used to store many things.","color":"white","italic":false}']},CustomModelData:46}}]}] run function alttp:give/golden_bee_bottle

playsound alttp.bug_net weather @p ~ ~ ~ 1 1