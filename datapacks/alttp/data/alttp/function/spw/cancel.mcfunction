scoreboard players set @s spw_s 0
function alttp:spw/restore_inventory


item replace entity @s inventory.20 with turtle_scute{display:{Name:'{"text":"Edit Special Weapon 1","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13} 1
item replace entity @s inventory.21 with turtle_scute{display:{Name:'{"text":"Edit Special Weapon 2","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13} 1
item replace entity @s inventory.22 with turtle_scute{display:{Name:'{"text":"Edit Special Weapon 3","color":"yellow","italic":false}',Lore:['{"text":"Click to open switching menu.","color":"white","italic":false}']},CustomModelData:13} 1

clear @p barrier{display:{Name:'{"text":"Cancel","color":"red","italic":false}',Lore:['{"text":"You have not yet unlocked a special weapon.","color":"white","italic":false}']}}
clear @p barrier{display:{Name:'{"text":"Cancel","color":"red","italic":false}',Lore:['{"text":"Click to cancel.","color":"white","italic":false}']}}
clear @p barrier{CustomModelData:3}

scoreboard players set @s spw_timer -1