scoreboard players add @p quaketick 1

execute if score @p quaketick matches 1 run effect give @s levitation 1 30 true
execute if score @p quaketick matches 1 run playsound minecraft:alttp.bounce weather @a ~ ~ ~ 1 1
execute if score @p quaketick matches 5 run effect clear @s levitation
execute if score @p quaketick matches 5 run effect give @p resistance 3 255 true

execute if score @p quaketick matches 6 if block ~ ~-0.7 ~ #bomb_hitbox run tag @s add weirdhitbox
execute if score @p quaketick matches 6 unless entity @s[tag=weirdhitbox] if block ~ ~-0.1 ~ #gothrough run scoreboard players set @p quaketick 5
execute if score @p quaketick matches 7 run particle minecraft:enchanted_hit ~ ~0.5 ~ 1 0 1 0 100
execute if score @p quaketick matches 8 run particle minecraft:enchanted_hit ~ ~0.5 ~ 1.3 0 1.3 0 100
execute if score @p quaketick matches 9 run particle minecraft:enchanted_hit ~ ~0.5 ~ 1.6 0 1.6 0 100
execute if score @p quaketick matches 10 run particle minecraft:enchanted_hit ~ ~0.5 ~ 2 0 2 0 100
execute if score @p quaketick matches 11 run particle minecraft:enchanted_hit ~ ~0.5 ~ 2.3 0 2.3 0 100
execute if score @p quaketick matches 12 run particle minecraft:enchanted_hit ~ ~0.5 ~ 2.6 0 2.6 0 100
execute if score @p quaketick matches 13 run particle minecraft:enchanted_hit ~ ~0.5 ~ 3 0 3 0 100
execute if score @p quaketick matches 14 run particle minecraft:enchanted_hit ~ ~0.5 ~ 3.3 0 3.3 0 100
execute if score @p quaketick matches 15 run particle minecraft:enchanted_hit ~ ~0.5 ~ 3.6 0 3.6 0 100
execute if score @s spw_e_12 matches 1 if score @p quaketick matches 15 run particle minecraft:enchanted_hit ~ ~0.5 ~ 5 0 5 0 125
execute if score @p quaketick matches 16 run particle minecraft:enchanted_hit ~ ~0.5 ~ 4 0 4 0 100
execute if score @s spw_e_12 matches 1 if score @p quaketick matches 16 run particle minecraft:enchanted_hit ~ ~0.5 ~ 8 0 8 0 150
execute if score @p quaketick matches 10 run execute as @e[tag=enemy,distance=..10] at @s unless block ~ ~-0.1 ~ #gothrough run function alttp:quakehit
execute if score @s spw_e_12 matches 1 if score @p quaketick matches 10 run execute as @e[tag=enemy,distance=10..20] at @s unless block ~ ~-0.1 ~ #gothrough run function alttp:quakehit
execute if score @p quaketick matches 5 if block ~ ~ ~ water run scoreboard players set @p quaketick 7 
execute if score @p quaketick matches 20 run scoreboard players set @p spw_c_12 0
execute if score @p quaketick matches 20 run scoreboard players set @p quaketick -1

execute if score @p quaketick matches 8 run playsound minecraft:alttp.quake weather @a ~ ~ ~ 1 1

execute if score @p quaketick matches 8 at @p run tp @p ~ ~ ~ ~ ~3
execute if score @p quaketick matches 9 at @p run tp @p ~ ~ ~ ~ ~-3
execute if score @p quaketick matches 10 at @p run tp @p ~ ~ ~ ~ ~3
execute if score @p quaketick matches 11 at @p run tp @p ~ ~ ~ ~ ~-3
execute if score @p quaketick matches 12 at @p run tp @p ~ ~ ~ ~ ~3
execute if score @p quaketick matches 13 at @p run tp @p ~ ~ ~ ~ ~-3
execute if score @p quaketick matches 14 at @p run tp @p ~ ~ ~ ~ ~3
execute if score @p quaketick matches 15 at @p run tp @p ~ ~ ~ ~ ~-3
execute if score @p quaketick matches 16 at @p run tp @p ~ ~ ~ ~ ~3
execute if score @p quaketick matches 17 at @p run tp @p ~ ~ ~ ~ ~-3
execute if score @p quaketick matches 18 at @p run tp @p ~ ~ ~ ~ ~3
execute if score @p quaketick matches 19 at @p run tp @p ~ ~ ~ ~ ~-3
execute if score @p quaketick matches 19 run tag @s remove weirdhitbox