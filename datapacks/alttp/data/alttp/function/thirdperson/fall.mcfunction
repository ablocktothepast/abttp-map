##Falling
scoreboard players set tpvel dummy -50
execute store result score tpvelo dummy run data get entity @e[type=armor_stand,tag=thirdperson_player,limit=1] Motion[1] 1000
scoreboard players operation tpvelo dummy += tpvel dummy
execute if score tpvelo dummy matches ..-1500 run scoreboard players set tpvelo dummy -1500
execute store result entity @e[type=armor_stand,tag=thirdperson_player,limit=1] Motion[1] double 0.001 run scoreboard players get tpvelo dummy
# tellraw @p {"score":{"name":"tpvelo","objective":"dummy"}}