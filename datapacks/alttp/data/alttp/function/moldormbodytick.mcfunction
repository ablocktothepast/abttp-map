#Calculate ID
execute store result score idcalc dummy run scoreboard players get @e[type=armor_stand,tag=link_a,limit=1] enemydummy4
execute if entity @s[tag=moldormbody1] run scoreboard players remove idcalc dummy 8
execute if entity @s[tag=moldormbody2] run scoreboard players remove idcalc dummy 16
execute if entity @s[tag=moldormbody3] run scoreboard players remove idcalc dummy 22
execute if entity @s[tag=moldormbody4] run scoreboard players remove idcalc dummy 27

tag @s add searcher
execute as @e[type=marker,tag=molcp,distance=..5] if score @s enemydummy4 = idcalc dummy run tag @s add result

#Teleport there with possible offset
scoreboard players add @s enemydummy16 1
execute if score @s enemydummy16 matches 7.. run scoreboard players set @s enemydummy16 -5
execute if score @s enemydummy16 matches -5 at @e[type=marker,tag=result] run tp @s ^ ^ ^ ~ ~
execute if score @s enemydummy16 matches -4 at @e[type=marker,tag=result] run tp @s ^-0.25 ^ ^ ~ ~
execute if score @s enemydummy16 matches -3 at @e[type=marker,tag=result] run tp @s ^-0.4 ^ ^ ~ ~
execute if score @s enemydummy16 matches -2 at @e[type=marker,tag=result] run tp @s ^-0.5 ^ ^ ~ ~
execute if score @s enemydummy16 matches -1 at @e[type=marker,tag=result] run tp @s ^-0.4 ^ ^ ~ ~
execute if score @s enemydummy16 matches 0 at @e[type=marker,tag=result] run tp @s ^-0.25 ^ ^ ~ ~
execute if score @s enemydummy16 matches 1 at @e[type=marker,tag=result] run tp @s ^ ^ ^ ~ ~
execute if score @s enemydummy16 matches 2 at @e[type=marker,tag=result] run tp @s ^0.25 ^ ^ ~ ~
execute if score @s enemydummy16 matches 3 at @e[type=marker,tag=result] run tp @s ^0.4 ^ ^ ~ ~
execute if score @s enemydummy16 matches 4 at @e[type=marker,tag=result] run tp @s ^0.5 ^ ^ ~ ~
execute if score @s enemydummy16 matches 5 at @e[type=marker,tag=result] run tp @s ^0.4 ^ ^ ~ ~
execute if score @s enemydummy16 matches 6 at @e[type=marker,tag=result] run tp @s ^0.25 ^ ^ ~ ~

execute if entity @s[tag=moldormbody4] run kill @e[type=marker,tag=result]

tag @e remove searcher
tag @e remove result