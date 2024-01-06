scoreboard players set 10 mapmath_objective 10

#X
execute store result score x mapmath_objective run scoreboard players get objectiveX map_objectivemath
scoreboard players operation x mapmath_objective *= 10 mapmath_objective
scoreboard players remove x mapmath_objective 30700
scoreboard players set 56 mapmath_objective -56

scoreboard players operation x mapmath_objective /= 56 mapmath_objective

#Z
execute store result score z mapmath_objective run scoreboard players get objectiveZ map_objectivemath
scoreboard players operation z mapmath_objective *= 10 mapmath_objective
scoreboard players remove z mapmath_objective 30700
scoreboard players set 56 mapmath_objective -56

scoreboard players operation z mapmath_objective /= 56 mapmath_objective