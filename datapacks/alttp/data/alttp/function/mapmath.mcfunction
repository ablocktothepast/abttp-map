scoreboard players set 10 mapmath 10

#X
execute store result score x mapmath run scoreboard players get oldposX mapping
scoreboard players operation x mapmath *= 10 mapmath
scoreboard players remove x mapmath 30700
scoreboard players set 56 mapmath -56

scoreboard players operation x mapmath /= 56 mapmath

#Z
execute store result score z mapmath run scoreboard players get oldposZ mapping
scoreboard players operation z mapmath *= 10 mapmath
scoreboard players remove z mapmath 30700
scoreboard players set 56 mapmath -56

scoreboard players operation z mapmath /= 56 mapmath