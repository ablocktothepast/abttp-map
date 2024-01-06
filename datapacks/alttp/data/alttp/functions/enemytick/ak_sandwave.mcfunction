particle block sand ~ ~ ~ 1.5 1.3 1.5 0.5 20 force
tp @s ^ ^ ^0.4

scoreboard players set @p[distance=..4.5] set_damage 4
execute unless block ~ ~ ~ #gothrough run kill @s
execute if entity @p[distance=..4.5] run kill @s