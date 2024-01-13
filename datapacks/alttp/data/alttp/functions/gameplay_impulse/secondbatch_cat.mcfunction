scoreboard players set @p spw_u_1 1
scoreboard players set 6 quests_2 1
scoreboard players set 6 quests_2_progress 1
scoreboard players set # gameplay 14

kill @e[type=cat,tag=agathacat]
summon cat -281 14 642 {Invulnerable:1b,NoAI:1b,Owner:[I;2119276449,-101957143,-1523254293,104690445],Sitting:1b,variant:"minecraft:persian",CollarColor:11b,Rotation:[-52F,0F],Tags:["agathacat"]}
kill @e[type=marker,tag=catlock]
tp @e[tag=erin] -300 -13.4375 646 84 0
kill @e[type=marker,tag=erin_marker]
tag @e[tag=erin] remove dynamic
execute as @e[type=item_display,tag=erin] run function animated_java:erin/animations/running/stop
execute as @e[type=item_display,tag=erin] run function animated_java:erin/animations/idle/play

bossbar set questupdate name [{"text":"Quest added: "},{"text":"A cat that's stuck","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s