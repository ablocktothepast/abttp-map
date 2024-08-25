#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=thiefzo] if score @s enemylink = @e[type=armor_stand,tag=thief,limit=1,sort=nearest] enemylink run tag @s add link_b

tp @e[type=zombie,tag=link_b] @s

execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute unless score @s dummy matches -2147483648..2147483647 run scoreboard players set @s dummy 0

execute if score @s enemydummy matches 0 if entity @p[distance=..6] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1.. run scoreboard players add @s dummy 1

execute if score @s enemydummy matches 1 run tp @s ~ ~ ~ facing entity @p eyes
execute at @s if score @s enemydummy matches 1 run tp @s ~ ~ ~ ~ 0
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1 run tp @s ^ ^ ^0.3
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 1 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 1 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 1 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 1 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 1 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 1 run tp @s ~ ~-0.05 ~

execute if score @s enemydummy matches 1 if score @s dummy matches 120.. run scoreboard players set @s enemydummy 5

execute if score @s enemydummy matches 1 if entity @p[distance=..1] run function alttp:thief_steal

execute if score @s enemydummy matches 2 run tp @s ~ ~ ~ facing entity @p eyes
execute at @s if score @s enemydummy matches 2 run tp @s ~ ~ ~ ~180 0
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 2 run tp @s ^ ^ ^0.3
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 2 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 2 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 2 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 2 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 2 run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.05 ~ #gothrough if score @s enemydummy matches 2 run tp @s ~ ~-0.05 ~

execute if score @s enemydummy matches 2 if score @s dummy matches 100.. run scoreboard players set @s enemydummy 4

execute if score @s enemydummy matches 2 run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:0b}
execute if score @s enemydummy matches 2 unless entity @e[type=zombie,tag=link_b] run function alttp:thief_takeback

execute if score @s enemydummy matches 3 run tellraw @p ["",{"text":"[Thief] ","color":"gray"},"Ghaah! You got me!.."]
execute if score @s enemydummy matches 4 run tellraw @p ["",{"text":"[Thief] ","color":"gray"},"Ghahaha! Your stuff is mine!"]
execute if score @s enemydummy matches 5 run tellraw @p ["",{"text":"[Thief] ","color":"gray"},"Ghaah! Don't run away!.."]

execute if score @s enemydummy matches 3..5 run kill @e[type=zombie,tag=link_b]
execute if score @s enemydummy matches 3..5 run kill @s

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a