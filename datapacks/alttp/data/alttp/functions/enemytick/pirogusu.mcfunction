#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=pirogususf] if score @s enemylink = @e[type=armor_stand,tag=pirogusu,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
execute if score @s enemydummy matches 0 run tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if score @s enemydummy matches 1 run tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#STATES (0=FIRST 1=IN WATER)
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.1 ~ water run tp @s ~ ~ ~ 90 0
execute if score @s enemydummy matches 0 if block ~ ~ ~ water run scoreboard players set @s enemydummy 1

#GET ON TOP OF WATER
execute at @s if score @s enemydummy matches 1 if block ~ ~0.5 ~ water run tp @s ~ ~0.5 ~
execute at @s if score @s enemydummy matches 1 if block ~ ~0.5 ~ water run tp @s ~ ~0.5 ~
execute at @s if score @s enemydummy matches 1 if block ~ ~0.2 ~ water run tp @s ~ ~0.2 ~
execute at @s if score @s enemydummy matches 1 if block ~ ~0.2 ~ water run tp @s ~ ~0.2 ~
execute at @s if score @s enemydummy matches 1 if block ~ ~0.1 ~ water run tp @s ~ ~0.1 ~
execute at @s if score @s enemydummy matches 1 if block ~ ~0.1 ~ water run tp @s ~ ~0.1 ~
execute at @s if score @s enemydummy matches 1 if block ~ ~0.05 ~ water run tp @s ~ ~0.05 ~
execute at @s if score @s enemydummy matches 1 if block ~ ~0.05 ~ water run tp @s ~ ~0.05 ~

#WATER SLIDING
execute at @s if score @s enemydummy matches 1 unless block ^ ^ ^0.5 #gothrough rotated ~90 0 if block ^ ^ ^0.5 #gothrough run tp @s ~ ~ ~ ~ ~
execute at @s if score @s enemydummy matches 1 unless block ^ ^ ^0.5 #gothrough rotated ~-90 0 if block ^ ^ ^0.5 #gothrough run tp @s ~ ~ ~ ~ ~

execute at @s if score @s enemydummy matches 1 unless score @s enemydummy2 matches 1.. if block ^0.5 ^ ^-0.5 #gothrough run tag @s add rotateleft
execute at @s if score @s enemydummy matches 1 unless score @s enemydummy2 matches 1.. if block ^0.5 ^ ^-0.5 #gothrough run tp @s ~ ~ ~ ~-90 0

execute if entity @s[tag=rotateleft] run scoreboard players set @s enemydummy2 10
execute if entity @s[tag=rotateleft] run tag @s remove rotateleft
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

execute at @s if score @s enemydummy matches 1 if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.15 ~ 0

#PARTICLES AND STUFF
execute if score @s enemydummy matches 0 run effect give @s slowness 1 1 true
execute if score @s enemydummy matches 1 run particle bubble ~ ~ ~ 0.05 0.05 0.05 0 2 force
execute if score @s enemydummy matches 1 run particle bubble_column_up ~ ~ ~ 0.05 0.05 0.05 0 1 force

#DAMAGING
execute unless score @s enemydummy3 matches 1.. if entity @p[distance=..0.6] run scoreboard players set @p[distance=..0.6] set_damage 3
execute unless score @s enemydummy3 matches 1.. if entity @p[distance=..0.6] run scoreboard players set @s enemydummy3 30
execute if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a