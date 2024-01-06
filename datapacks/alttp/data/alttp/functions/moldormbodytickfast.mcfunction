#Calculate ID
execute store result score idcalc dummy run scoreboard players get @e[type=armor_stand,tag=link_a,limit=1] enemydummy4
execute if entity @s[tag=moldormbody1] run scoreboard players remove idcalc dummy 6
execute if entity @s[tag=moldormbody2] run scoreboard players remove idcalc dummy 12
execute if entity @s[tag=moldormbody3] run scoreboard players remove idcalc dummy 16
execute if entity @s[tag=moldormbody4] run scoreboard players remove idcalc dummy 19

tag @s add searcher
execute as @e[type=marker,tag=molcp,distance=..5] if score @s enemydummy4 = idcalc dummy run tag @s add result
tp @s @e[type=marker,tag=result,limit=1]

tag @e remove searcher
tag @e remove result