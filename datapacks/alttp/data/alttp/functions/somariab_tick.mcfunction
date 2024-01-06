execute unless score @p spw_e_16 matches 1 unless score @s enemydummy matches 1.. as @e[tag=enemy,distance=..1.3] run damage @s 10
execute if score @p spw_e_16 matches 1 unless score @s enemydummy matches 1.. as @e[tag=enemy,distance=..1.3] run damage @s 15
execute unless score @s enemydummy matches 1.. if entity @e[tag=enemy,distance=..1.3] run scoreboard players add @s dummy 1
execute unless score @s enemydummy matches 1.. if entity @e[tag=enemy,distance=..1.3] run playsound entity.generic.big_fall weather @p ~ ~ ~ 1 0.5
execute unless score @s enemydummy matches 1.. if entity @e[tag=enemy,distance=..1.3] run particle block dried_kelp_block ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute unless score @s enemydummy matches 1.. if entity @e[tag=enemy,distance=..1.3] run scoreboard players set @s enemydummy 35
execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1

execute unless score @p spw_e_16 matches 1 if score @s dummy matches 5.. run setblock ~ ~ ~ air
execute unless score @p spw_e_16 matches 1 if score @s dummy matches 5.. run playsound minecraft:entity.zombie.death weather @a ~ ~ ~ 1 1
execute unless score @p spw_e_16 matches 1 if score @s dummy matches 5.. run particle soul ~ ~ ~ 0.5 0.5 0.5 0 100 force
execute unless score @p spw_e_16 matches 1 if score @s dummy matches 5.. run kill @s

execute if score @p spw_e_16 matches 1 if score @s dummy matches 8.. run setblock ~ ~ ~ air
execute if score @p spw_e_16 matches 1 if score @s dummy matches 8.. run playsound minecraft:entity.zombie.death weather @a ~ ~ ~ 1 1
execute if score @p spw_e_16 matches 1 if score @s dummy matches 8.. run particle soul ~ ~ ~ 0.5 0.5 0.5 0 100 force
execute if score @p spw_e_16 matches 1 if score @s dummy matches 8.. run kill @s