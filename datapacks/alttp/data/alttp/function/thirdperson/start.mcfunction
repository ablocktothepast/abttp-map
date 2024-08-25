scoreboard players set . thirdperson 1
kill @e[type=armor_stand,tag=thirdperson_player]
execute at @p run summon armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["thirdperson_player"]}
kill @e[type=minecart,tag=thirdperson_minecart]
kill @e[type=area_effect_cloud,tag=thirdperson_marker]
execute at @p run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:0,Tags:["thirdperson_marker"],Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["thirdperson_minecart"]}]}
kill @e[type=interaction,tag=thirdperson_interaction]
execute at @p run summon interaction ~ ~ ~ {Tags:["thirdperson_interaction"],width:5f,height:5f}

loot replace entity @p enderchest.0 loot get_player_head
item replace entity @e[type=armor_stand,tag=thirdperson_player] armor.head from entity @p enderchest.0
clear @p player_head
scoreboard players set . crosshair 0
effect give @p invisibility infinite 1 true
effect give @p resistance infinite 255 true
effect give @p mining_fatigue infinite 255 true
scoreboard players set tpcool dummy 20