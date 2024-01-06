kill @e[type=marker,tag=fairysave]
summon marker ~ ~ ~ {Tags:["fairysave"]}

execute store result entity @e[type=marker,tag=fairysave,limit=1] Pos[0] float 1 run scoreboard players get @s d_x
execute store result entity @e[type=marker,tag=fairysave,limit=1] Pos[1] float 1 run scoreboard players get @s d_y
execute store result entity @e[type=marker,tag=fairysave,limit=1] Pos[2] float 1 run scoreboard players get @s d_z

tp @s @e[type=marker,tag=fairysave,limit=1]
execute at @e[type=marker,tag=fairysave,limit=1] run spawnpoint @s ~ ~ ~

clear @s carrot_on_a_stick{CustomModelData:48} 1
function alttp:give/empty_bottle

tellraw @p ["",{"text":"[Fairy] ","color":"dark_purple"},"I will save you from death, master Link!"]

scoreboard players set @a deaths 0