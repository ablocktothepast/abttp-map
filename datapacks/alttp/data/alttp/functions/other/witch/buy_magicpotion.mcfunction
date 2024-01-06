execute unless score @s rupees matches 60.. run tellraw @s ["",{"text":"[Witch] ","color":"dark_purple"},"It appears you don't have enough rupees! Maybe come back later..."]
execute if score @s rupees matches 60.. unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Empty Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Used to store many things.","color":"white","italic":false}']},CustomModelData:46}}]}] run tellraw @s ["",{"text":"[Witch] ","color":"dark_purple"},"It appears you don't have any empty bottles! Maybe come back later..."]

execute if score @s rupees matches 60.. if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Empty Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Used to store many things.","color":"white","italic":false}']},CustomModelData:46}}]}] run tag @s add bought

execute if entity @s[tag=bought] run tellraw @s ["",{"text":"[Witch] ","color":"dark_purple"},"Heheh, thank you for your purchase, young man..."]
execute if entity @s[tag=bought] run function alttp:give/magic_potion
execute if entity @s[tag=bought] run clear @s carrot_on_a_stick{CustomModelData:46} 1
execute if entity @s[tag=bought] run scoreboard players remove @s rupees 60
execute if entity @s[tag=bought] run tag @s remove bought