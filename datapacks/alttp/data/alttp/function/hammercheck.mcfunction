#ADD HARD CODINGS FOR HAMMER DESTRUCTABLE OBJECTS ONCE ADDED
#lynel
scoreboard players remove @e[type=armor_stand,tag=lynel,distance=..1.5] enemydummy3 8

#TERRORPIN
tag @e[type=armor_stand,tag=terrorpin,scores={enemydummy=1},distance=..6] add tp1
scoreboard players set @e[type=armor_stand,tag=tp1] enemydummy 2
tag @e remove tp1

#MOLE
scoreboard players set @e[type=armor_stand,tag=mole,distance=..3,scores={enemydummy2=1},limit=1,sort=nearest] enemydummy2 0

#DEFAULT LITTLE ENEMY DAMAGE (ENCHANTED ONLY)
execute if score @s spw_e_18 matches 1 positioned ^ ^ ^1.5 run damage @e[type=silverfish,tag=enemy,distance=..1.5,limit=1] 1

execute unless score @s spw_e_18 matches 1 positioned ^ ^ ^1.5 run scoreboard players set @e[tag=enemy,tag=!nostun,distance=..1.5] frozentimer 60
execute unless score @s spw_e_18 matches 1 positioned ^ ^ ^1.5 run tag @e[tag=enemy,tag=!nostun,distance=..1.5] add icerodfrozen
execute unless score @s spw_e_18 matches 1 positioned ^ ^ ^1.5 run tag @e[tag=enemy,tag=!nostun,distance=..1.5] add stunned

execute if score @s spw_e_18 matches 1 positioned ^ ^ ^1.5 run scoreboard players set @e[tag=enemy,tag=!nostun,type=!silverfish,distance=..1.5] frozentimer 60
execute if score @s spw_e_18 matches 1 positioned ^ ^ ^1.5 run tag @e[tag=enemy,tag=!nostun,type=!silverfish,distance=..1.5] add icerodfrozen
execute if score @s spw_e_18 matches 1 positioned ^ ^ ^1.5 run tag @e[tag=enemy,tag=!nostun,type=!silverfish,distance=..1.5] add stunned

#Kill stoned deadrock
execute rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=item_display,tag=deadrock,scores={dummy=1},distance=..1.5] if entity @e[type=zombie,tag=deadrockzo,distance=..1.5] run particle block cobblestone ~ ~ ~ 0.4 0.2 0.4 0.1 35 force
execute rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=item_display,tag=deadrock,scores={dummy=1},distance=..1.5] run kill @e[type=zombie,tag=deadrockzo,distance=..1.5]