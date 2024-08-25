summon interaction ~ ~ ~ {Tags:["chestm","smallkey"],width:1.1f,height:1.1f}
execute align xyz positioned ~0.5 ~ ~0.5 rotated ~ 0 run tp @e[type=interaction,tag=chestm,tag=!init,limit=1,sort=nearest] ~ ~ ~ ~ ~

summon item_display ~ ~ ~ {Tags:["chestd"],item:{components:{"minecraft:custom_model_data":124},count:1,id:"minecraft:carrot_on_a_stick"}}
execute align xyz positioned ~0.5 ~ ~0.5 rotated ~ 0 run tp @e[type=item_display,tag=chestd,tag=!init,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute unless score . chestid matches 0.. run scoreboard players set . chestid 0
execute store result score @e[type=interaction,tag=chestm,limit=1,sort=nearest] chestid run scoreboard players get . chestid
execute store result score @e[type=item_display,tag=chestd,limit=1,sort=nearest] chestid run scoreboard players get . chestid
scoreboard players add . chestid 1