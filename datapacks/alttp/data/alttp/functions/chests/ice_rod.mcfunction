summon interaction ~ ~ ~ {Tags:["chestm","icerod"],width:1.1f,height:1.1f}
execute align xyz positioned ~0.5 ~ ~0.5 rotated ~ 0 run tp @e[type=interaction,tag=chestm,tag=!init,limit=1,sort=nearest] ~ ~ ~ ~ ~

summon item_display ~ ~ ~ {Tags:["chestd"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:124}}}
execute align xyz positioned ~0.5 ~ ~0.5 rotated ~ 0 run tp @e[type=item_display,tag=chestd,tag=!init,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute unless score . chestid matches 0.. run scoreboard players set . chestid 0
execute store result score @e[type=interaction,tag=chestm,limit=1,sort=nearest] chestid run scoreboard players get . chestid
execute store result score @e[type=item_display,tag=chestd,limit=1,sort=nearest] chestid run scoreboard players get . chestid
scoreboard players add . chestid 1