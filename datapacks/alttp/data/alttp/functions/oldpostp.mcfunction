execute store result entity @s Pos[0] double 1 run scoreboard players get oldposX mapping
execute store result entity @s Pos[1] double 1 run scoreboard players get oldposY mapping
execute store result entity @s Pos[2] double 1 run scoreboard players get oldposZ mapping

tp @p @s
kill @s

effect give @p resistance 2 255 true