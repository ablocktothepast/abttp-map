execute if score @p bombs matches 0 run item replace entity @p hotbar.3 with barrier{display:{Name:'{"text":"Out of bombs!","color":"dark_red","italic":false}',Lore:['{"text":"You\'re all out of bombs to throw!","color":"white","italic":false}']},CustomModelData:2} 1
execute if score @p bombs matches 0 run return 0

$execute at @p run summon armor_stand ~ ~40 ~ {Marker:1b,Invisible:1b,Tags:["bomber"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:$(bombs)b,tag:{display:{Name:'{"text":"Bomb","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw a bomb!","color":"white","italic":false}']},CustomModelData:284,active:0}},{}]}
item replace entity @p hotbar.3 from entity @e[type=armor_stand,tag=bomber,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=bomber]