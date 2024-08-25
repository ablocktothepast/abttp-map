execute if score @p bombs matches 1.. unless score @p bombcooldown matches 1.. run summon item ~ ~1.3 ~ {Item:{components:{"minecraft:custom_name":'{"text":"Bomb","color":"blue","italic":false}',"minecraft:lore":['{"text":"Throw to place a bomb.","color":"white","italic":false}']},count:1,id:"minecraft:tnt"},PickupDelay:32767,Tags:["dothrowbomb"]}
execute unless score @p bombs matches 1.. run tellraw @p {"text":"You don't have any bombs!","color":"dark_red"}
execute if score @p bombcooldown matches 1.. run tellraw @p {"text":"You must wait before throwing another bomb!","color":"dark_red"}

execute as @e[type=item,tag=dothrowbomb,tag=!motioned] at @s rotated as @p run function alttp:bomb_motion
tag @e[type=item,tag=dothrowbomb] add motioned