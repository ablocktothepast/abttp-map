execute as @e[type=item_display,tag=fairy,limit=1,sort=nearest] at @s run setblock ~ ~ ~ air

kill @e[type=item_display,tag=fairy,limit=1,sort=nearest]

effect give @s minecraft:regeneration 2 4 true

tellraw @p ["",{"text":"[Fairy] ","color":"dark_purple"},"Allow me to heal your wounds, master Link!"]

playsound alttp.fairy weather @s ~ ~ ~ 1 1