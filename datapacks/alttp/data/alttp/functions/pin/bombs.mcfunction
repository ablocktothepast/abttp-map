execute store result storage test bombs int 1 run scoreboard players get @s bombs
function alttp:pin/bombs_macro with storage test

execute if score @s bombs matches 1 run item replace entity @s hotbar.7 with carrot_on_a_stick{CustomModelData:284,display:{Name:'{"text":"1 bomb","color":"blue","italic":false}',Lore:['{"text":"Right-click to throw a bomb.","color":"white","italic":false}']},Enchantments:[{}],pin:1,amount:1,active:0} 1