# particle crit ~ ~ ~
execute if entity @p[distance=..2.5] run scoreboard players set @s enemydummy 0
execute if entity @p[distance=..2.5] run scoreboard players set @s enemydummy4 80
execute if entity @s[distance=..12] positioned ^ ^ ^2.5 run function alttp:castleguardraycastbig

scoreboard players set @s enemydummy6 -1