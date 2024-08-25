#MOVEMENT

execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~0.2
execute if entity @s[tag=2] unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~-0.2
execute if entity @s[tag=3] unless entity @s[tag=icerodfrozen] run tp @s ~0.2 ~ ~
execute if entity @s[tag=4] unless entity @s[tag=icerodfrozen] run tp @s ~-0.2 ~ ~

#COLLISION

execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato1
execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run execute positioned ~-1 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato1
execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run execute positioned ~-2 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato1
execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run execute positioned ~-2.7 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato1
execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run execute positioned ~1 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato1
execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run execute positioned ~2 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato1

execute if entity @s[tag=2] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato2
execute if entity @s[tag=2] unless entity @s[tag=icerodfrozen] run execute positioned ~-1 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato2
execute if entity @s[tag=2] unless entity @s[tag=icerodfrozen] run execute positioned ~-2 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato2
execute if entity @s[tag=2] unless entity @s[tag=icerodfrozen] run execute positioned ~1 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato2
execute if entity @s[tag=2] unless entity @s[tag=icerodfrozen] run execute positioned ~2 ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato2

execute if entity @s[tag=3] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~1 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato3
execute if entity @s[tag=3] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~2 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato3
execute if entity @s[tag=3] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~-1 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato3
execute if entity @s[tag=3] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~-2 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato3
execute if entity @s[tag=3] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~-3 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato3
execute if entity @s[tag=3] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato3

execute if entity @s[tag=4] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~1 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato4
execute if entity @s[tag=4] run execute positioned ~ ~ ~2 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato4
execute if entity @s[tag=4] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~-1 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato4
execute if entity @s[tag=4] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~-2 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato4
execute if entity @s[tag=4] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~-3 run execute unless block ~ ~ ~ #gothrough run tag @s add rotato4
execute if entity @s[tag=4] unless entity @s[tag=icerodfrozen] run execute positioned ~ ~ ~ run execute unless block ~ ~ ~ #gothrough run tag @s add rotato4

execute if entity @s[tag=rotato1] run tp @s ~ ~ ~-0.2
execute if entity @s[tag=rotato1] run tag @s add 2
execute if entity @s[tag=rotato1] run tag @s remove 1
execute if entity @s[tag=rotato1] run tag @s remove rotato1

execute if entity @s[tag=rotato2] run tp @s ~ ~ ~0.2
execute if entity @s[tag=rotato2] run tag @s add 1
execute if entity @s[tag=rotato2] run tag @s remove 2
execute if entity @s[tag=rotato2] run tag @s remove rotato2

execute if entity @s[tag=rotato3] run tp @s ~-0.2 ~ ~
execute if entity @s[tag=rotato3] run tag @s add 4
execute if entity @s[tag=rotato3] run tag @s remove 3
execute if entity @s[tag=rotato3] run tag @s remove rotato3

execute if entity @s[tag=rotato4] run tp @s ~0.2 ~ ~
execute if entity @s[tag=rotato4] run tag @s add 3
execute if entity @s[tag=rotato4] run tag @s remove 4
execute if entity @s[tag=rotato4] run tag @s remove rotato4

#ANIMATION
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 5 run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1..2 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 22}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 3..4 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 23}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

execute if score @s rolldamagecool matches 1.. run scoreboard players remove @s rolldamagecool 1

#FALLING

execute if entity @s[tag=1] unless entity @s[tag=icerodfrozen] run execute if block ~ ~-0.8 ~ #gothrough if block ~-1 ~-0.8 ~ #gothrough if block ~-2.7 ~-0.8 ~ #gothrough if block ~-2 ~-0.8 ~ #gothrough if block ~1 ~-0.8 ~ #gothrough if block ~2 ~-0.8 ~ #gothrough run tp @s ~ ~-1 ~
execute if entity @s[tag=2] unless entity @s[tag=icerodfrozen] run execute if block ~ ~-0.8 ~ #gothrough if block ~-1 ~-0.8 ~ #gothrough if block ~-2.7 ~-0.8 ~ #gothrough if block ~-2 ~-0.8 ~ #gothrough if block ~1 ~-0.8 ~ #gothrough if block ~2 ~-0.8 ~ #gothrough run tp @s ~ ~-1 ~

#DAMAGE

execute if entity @s[tag=1] run execute positioned ~ ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=1] run execute positioned ~-1 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=1] run execute positioned ~-2 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=1] run execute positioned ~-2.7 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=1] run execute positioned ~1 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=1] run execute positioned ~1.3 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1

execute if entity @s[tag=2] run execute positioned ~ ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=2] run execute positioned ~-1 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=2] run execute positioned ~-2 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=2] run execute positioned ~-2.7 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=2] run execute positioned ~1 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=2] run execute positioned ~1.3 ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1

execute if entity @s[tag=3] run execute positioned ~ ~ ~-1 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=3] run execute positioned ~ ~ ~-2 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=3] run execute positioned ~ ~ ~-2.7 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=3] run execute positioned ~ ~ ~1 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=3] run execute positioned ~ ~ ~1.3 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=3] run execute positioned ~ ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1

execute if entity @s[tag=4] run execute positioned ~ ~ ~-1 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=4] run execute positioned ~ ~ ~-2 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=4] run execute positioned ~ ~ ~-2.7 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=4] run execute positioned ~ ~ ~1 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=4] run execute positioned ~ ~ ~1.3 run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1
execute if entity @s[tag=4] run execute positioned ~ ~ ~ run execute if entity @p[distance=..0.7] run scoreboard players set @s rolldamage 1

execute if score @s rolldamage matches 1 unless score @s rolldamagecool matches 1.. run execute as @p at @s run scoreboard players set @p set_damage 2
execute if score @s rolldamage matches 1 run scoreboard players set @s rolldamagecool 10
scoreboard players set @s rolldamage 0