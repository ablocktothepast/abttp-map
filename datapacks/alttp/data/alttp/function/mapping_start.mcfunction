# scoreboard players set @s mapping 1
# execute store result score oldposX mapping run data get entity @s Pos[0] 1
# execute store result score oldposY mapping run data get entity @s Pos[1] 1
# execute store result score oldposZ mapping run data get entity @s Pos[2] 1
clear @s filled_map
# scoreboard players set zoomlevel mapping 1
# tp @s 132.5 -61.0 3.5

# scoreboard players set @s map_sneak 0
# scoreboard players set . intercool 10

#tellraw @p "The map has been temporarily disabled and is under construction."