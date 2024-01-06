execute unless score @s enemydummy2 matches 1 run scoreboard players add @s enemydummy 2
execute unless score @s enemydummy2 matches 1 store result entity @s transformation.scale[0] float 0.1 run scoreboard players get @s enemydummy
execute unless score @s enemydummy2 matches 1 store result entity @s transformation.scale[1] float 0.1 run scoreboard players get @s enemydummy
execute unless score @s enemydummy2 matches 1 store result entity @s transformation.scale[2] float 0.1 run scoreboard players get @s enemydummy
execute unless score @s enemydummy2 matches 1 run tp @s ~ ~0.1 ~ ~3 ~

execute if score @s enemydummy matches 100.. run particle block sand ~ ~-6 ~ 3 2.5 3 50 75 force

execute if score @s enemydummy matches 150.. run scoreboard players set @s enemydummy2 1

execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches ..80 facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^0.2
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches ..80 at @s run tp @s ~ ~ ~ ~10 ~

execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 81..100 facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^0.25
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 81..100 at @s run tp @s ~ ~ ~ ~12.5 ~

execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 101..110 facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^0.35
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 101..110 at @s run tp @s ~ ~ ~ ~15 ~

execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 111..120 facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^0.45
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 111..120 at @s run tp @s ~ ~ ~ ~17.5 ~

execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 121..140 facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^0.55
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 121..140 at @s run tp @s ~ ~ ~ ~20 ~

execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 141 run scoreboard players set @s enemydummy4 150
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 141.. store result entity @s transformation.scale[0] float 0.1 run scoreboard players get @s enemydummy4
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 141.. store result entity @s transformation.scale[1] float 0.1 run scoreboard players get @s enemydummy4
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 141.. store result entity @s transformation.scale[2] float 0.1 run scoreboard players get @s enemydummy4
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 141.. run scoreboard players remove @s enemydummy4 4
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 141.. run tp @s ~ ~-0.2 ~ ~17.5 ~
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 141.. if score @s enemydummy4 matches ..0 run kill @s

execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 20 run function alttp:lanmolas_spewrocks
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 40 run function alttp:lanmolas_spewrocks
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 60 run function alttp:lanmolas_spewrocks
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 80 run function alttp:lanmolas_spewrocks
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 100 run function alttp:lanmolas_spewrocks
execute if score @s enemydummy2 matches 1 if score @s enemydummy3 matches 120 run function alttp:lanmolas_spewrocks

execute positioned ~ ~-7 ~ run tag @p[distance=..3] add tornadoflung

playsound block.sand.break weather @p ~ ~ ~ 1.8 1
playsound block.sand.break weather @p ~ ~ ~ 1.5 0.6

execute if score @s enemydummy2 matches 1 run scoreboard players add @s enemydummy3 1