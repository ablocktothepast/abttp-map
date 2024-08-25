# particle crit ~ ~ ~
execute if entity @p[distance=..1] run scoreboard players set @s enemydummy 0
execute if entity @p[distance=..1] run scoreboard players set @s enemydummy3 30
execute if entity @p[distance=..1] run scoreboard players set @s enemydummy4 100
#Notify other guards
execute if entity @p[distance=..1] run scoreboard players set @e[type=armor_stand,tag=castleguard,distance=0.1..10] enemydummy3 30
execute if entity @p[distance=..1] run scoreboard players set @e[type=armor_stand,tag=castleguard,distance=0.1..10] enemydummy4 100
execute if block ^ ^ ^0.5 #gothrough if entity @s[distance=..10] positioned ^ ^ ^0.5 run function alttp:castleguardraycast