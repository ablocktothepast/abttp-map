say e

execute if score @p bombs matches 0 run item replace entity @p hotbar.2 with minecraft:barrier[minecraft:custom_model_data=2,minecraft:lore=['{"text":"You\'re all out of bombs to throw!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Out of bombs!","color":"dark_red","italic":false}'] 1
execute if score @p bombs matches 0 run return 0

$execute at @p run summon armor_stand ~ ~40 ~ {HandItems:[{components:{"minecraft:custom_data":{active:0},"minecraft:custom_model_data":284,"minecraft:custom_name":'{"text":"Bomb","color":"dark_blue","italic":false}',"minecraft:lore":['{"text":"Right-click to throw a bomb!","color":"white","italic":false}']},count:$(bombs),id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Tags:["bomber"]}
item replace entity @p hotbar.2 from entity @e[type=armor_stand,tag=bomber,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=bomber]