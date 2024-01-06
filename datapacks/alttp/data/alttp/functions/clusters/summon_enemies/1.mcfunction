scoreboard players set summon clusters 1

execute positioned 64 56 76 run function alttp:summon/buzzblob
execute positioned 46 56 61 run function alttp:summon/buzzblob
execute positioned 39 56 82 run function alttp:summon/buzzblob
execute positioned 61 56 89 run function alttp:summon/buzzblob
execute positioned 77 56 89 run function alttp:summon/buzzblob
execute positioned 98 56 64 run function alttp:summon/buzzblob

execute as @e[tag=enemy,tag=!identified] run scoreboard players set @s clusters 1
execute as @e[tag=enemy,tag=!identified] run tag @s add identified