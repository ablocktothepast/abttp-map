execute if score @p bombs matches 1.. unless score @p bombcooldown matches 1.. run summon item ~ ~1.3 ~ {PickupDelay:32767,Tags:["dothrowbomb"],Item:{id:"minecraft:tnt",Count:1b,tag:{display:{Name:'{"text":"Bomb","color":"blue","italic":false}',Lore:['{"text":"Throw to place a bomb.","color":"white","italic":false}']},Enchantments:[{}]}}}
execute unless score @p bombs matches 1.. run tellraw @p {"text":"You don't have any bombs!","color":"dark_red"}
execute if score @p bombcooldown matches 1.. run tellraw @p {"text":"You must wait before throwing another bomb!","color":"dark_red"}

execute as @e[type=item,tag=dothrowbomb,tag=!motioned] at @s rotated as @p run function alttp:bomb_motion
tag @e[type=item,tag=dothrowbomb] add motioned