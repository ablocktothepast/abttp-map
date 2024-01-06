#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=hardhat_beetlesf] if score @s enemylink = @e[type=armor_stand,tag=hardhat_beetle,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run scoreboard players set @s enemydummy 10

execute if score @s enemydummy matches 1 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.05
execute if score @s enemydummy matches 2 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.1
execute if score @s enemydummy matches 3 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.2
execute if score @s enemydummy matches 4 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.32
execute if score @s enemydummy matches 5 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.40
execute if score @s enemydummy matches 6 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.48
execute if score @s enemydummy matches 7 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.52
execute if score @s enemydummy matches 8 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.56
execute if score @s enemydummy matches 9 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.58
execute if score @s enemydummy matches 10 as @e[type=silverfish,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^-0.1 #gothrough run tp @s ^ ^ ^-0.6
execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1

#HEALTH
data merge entity @e[type=silverfish,tag=link_b,limit=1] {Health:999f}

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a