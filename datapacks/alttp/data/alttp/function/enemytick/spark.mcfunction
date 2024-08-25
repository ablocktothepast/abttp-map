execute unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.2

particle electric_spark ~ ~ ~ 0.2 0.25 0.2 0.2 4 force

execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1

execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 0 positioned ^ ^ ^-0.5 rotated ~90 ~ if block ^ ^ ^1 #gothrough run tag @s add rotateright
execute unless block ^ ^ ^0.6 #gothrough run tag @s add rotateleft

execute if entity @s[tag=rotateright] run tp @s ~ ~ ~ ~90 ~
execute if entity @s[tag=rotateright] run scoreboard players set @s enemydummy 10
execute if entity @s[tag=rotateright] run playsound minecraft:block.amethyst_block.resonate weather @p
execute if entity @s[tag=rotateright] run tag @s remove rotateright

execute if entity @s[tag=rotateleft] run tp @s ~ ~ ~ ~-90 ~
execute if entity @s[tag=rotateleft] run playsound minecraft:block.amethyst_block.resonate weather @p
execute if entity @s[tag=rotateleft] run tag @s remove rotateleft

#DAMAGING
execute align xyz positioned ~0.5 ~ ~0.5 unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 4
execute align xyz positioned ~0.5 ~ ~0.5 unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 30

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

##Cool texture models from Reevz incorporated
scoreboard players add @s enemydummy3 1
execute if score @s enemydummy3 matches 13.. run scoreboard players set @s enemydummy3 1

execute if score @s enemydummy3 matches 1..2 run data merge entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] {item:{components:{"minecraft:custom_model_data":241},count:1,id:"minecraft:carrot_on_a_stick"}}
execute if score @s enemydummy3 matches 3..4 run data merge entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] {item:{components:{"minecraft:custom_model_data":242},count:1,id:"minecraft:carrot_on_a_stick"}}
execute if score @s enemydummy3 matches 5..6 run data merge entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] {item:{components:{"minecraft:custom_model_data":243},count:1,id:"minecraft:carrot_on_a_stick"}}
execute if score @s enemydummy3 matches 7..8 run data merge entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] {item:{components:{"minecraft:custom_model_data":244},count:1,id:"minecraft:carrot_on_a_stick"}}
execute if score @s enemydummy3 matches 9..10 run data merge entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] {item:{components:{"minecraft:custom_model_data":245},count:1,id:"minecraft:carrot_on_a_stick"}}
execute if score @s enemydummy3 matches 11..12 run data merge entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] {item:{components:{"minecraft:custom_model_data":246},count:1,id:"minecraft:carrot_on_a_stick"}}

##Rotate
scoreboard players add @s enemydummy4 5
scoreboard players add @s enemydummy5 10
execute store result entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] Rotation[0] float 1 run scoreboard players get @s enemydummy4
execute store result entity @e[type=item_display,tag=sparkdi,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get @s enemydummy5