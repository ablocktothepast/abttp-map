execute unless score @s enemydummy4 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 4
execute unless score @s enemydummy4 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy4 30

execute if score @s enemydummy4 matches 1.. run scoreboard players remove @s enemydummy4 1