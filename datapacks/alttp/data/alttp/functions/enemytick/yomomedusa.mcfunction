#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=marker,tag=yomomedusatracker] if score @s enemylink = @e[type=armor_stand,tag=yomomedusa,limit=1,sort=nearest] enemylink run tag @s add link_b

execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0

#Tracker alignment
execute as @e[type=marker,tag=link_b] at @s run tp @s @e[type=armor_stand,tag=link_a,limit=1,sort=nearest]
execute as @e[type=marker,tag=link_b] at @s facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute store result score @s enemydummy5 run data get entity @e[type=marker,tag=link_b,limit=1] Rotation[0]

execute if score @s enemydummy5 matches -135..-45 run scoreboard players set @s enemydummy6 -90
execute if score @s enemydummy5 matches -45..45 run scoreboard players set @s enemydummy6 0
execute if score @s enemydummy5 matches 45..135 run scoreboard players set @s enemydummy6 90
execute if score @s enemydummy5 matches 135..180 run scoreboard players set @s enemydummy6 180
execute if score @s enemydummy5 matches -180..-135 run scoreboard players set @s enemydummy6 180

execute if score @s enemydummy matches 1 if score @s enemydummy6 matches 90 rotated 90 0 run function alttp:medusashoot
execute if score @s enemydummy matches 1 if score @s enemydummy6 matches -90 rotated -90 0 run function alttp:medusashoot
execute if score @s enemydummy matches 1 if score @s enemydummy6 matches 0 rotated 0 0 run function alttp:medusashoot
execute if score @s enemydummy matches 1 if score @s enemydummy6 matches 180 rotated 180 0 run function alttp:medusashoot

execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

execute if score @s enemydummy matches 1.. run scoreboard players set @s enemydummy 0

#DAMAGING
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @p set_damage 2
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @s enemydummy2 30
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=marker,tag=link_b] run tag @s add link_init
tag @e[type=marker] remove link_b
tag @s remove link_a