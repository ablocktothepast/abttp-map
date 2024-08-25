# summon item ~ ~1.3 ~ {PickupDelay:32767,Tags:["dothrowbomb"],Item:{id:"minecraft:tnt",Count:1b,tag:{display:{Name:'{"text":"Active Bomb","color":"red","italic":false}',Lore:['{"text":"Quick! Throw it away!","color":"white","italic":false}']}}}}
summon item ~ ~1.3 ~ {Item:{components:{"minecraft:custom_data":{activebomb:1},"minecraft:custom_name":'{"text":"Bomb","color":"blue","italic":false}',"minecraft:lore":['{"text":"Throw to place a bomb.","color":"white","italic":false}']},count:1,id:"minecraft:tnt"},PickupDelay:32767,Tags:["dothrowbomb","active"]}
clear @p carrot_on_a_stick[custom_model_data=284,custom_data={active:1}]

execute as @e[type=item,tag=dothrowbomb,tag=!motioned] at @s rotated as @p run function alttp:bomb_motion
tag @e[type=item,tag=dothrowbomb] add motioned

execute store result score bombticktemp dummy run scoreboard players get @p bombtick
scoreboard players set @p bombtick -1
tag @p remove bomb