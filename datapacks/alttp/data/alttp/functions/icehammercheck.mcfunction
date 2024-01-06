execute if entity @e[tag=icerodfrozen,tag=!stunned,tag=!noparticles,distance=..2] store result score result rand run random value 1..4
execute if entity @e[tag=icerodfrozen,tag=!stunned,tag=!noparticles,distance=..2] if score @s spw_e_18 matches 1 store result score result rand run random value 1..3
execute if entity @e[tag=icerodfrozen,tag=!stunned,tag=!noparticles,distance=..2] if score result rand matches 1 run function alttp:loot/bigmagic
kill @e[tag=icerodfrozen,tag=!stunned,tag=!noparticles,distance=..2]
playsound alttp.hammerpound weather @p ~ ~ ~ 1 1