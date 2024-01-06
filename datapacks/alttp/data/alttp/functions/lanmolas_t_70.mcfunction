execute store result score result rand run random value 1..2
execute if score @s enemydummy10 matches ..15 run scoreboard players set result rand 1
execute store result score @s enemydummy4 run scoreboard players get result rand
execute unless score @s enemydummy4 matches 1 store result score result rand run random value 1..360
execute unless score @s enemydummy4 matches 1 run scoreboard players remove result rand 180
execute unless score @s enemydummy4 matches 1 as @e[type=armor_stand,tag=body_segment] store result entity @s Rotation[0] float 1 run scoreboard players get result rand
execute if score @s enemydummy4 matches 1 as @e[type=armor_stand,tag=body_segment] at @s facing entity @p feet run tp @s ~ ~ ~ ~ 0