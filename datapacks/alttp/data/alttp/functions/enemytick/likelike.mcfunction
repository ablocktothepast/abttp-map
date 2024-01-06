#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=likelikesf] if score @s enemylink = @e[type=armor_stand,tag=likelike,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:likelike_back
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#SLORP
scoreboard players add @s enemydummy 1

execute unless score @s enemydummy3 matches 1.. unless score @s enemydummy2 matches 1 if score @s enemydummy matches 40 if entity @p[distance=..8,tag=!likesucked] run scoreboard players set @s enemydummy2 1
execute unless score @s enemydummy3 matches 1.. if score @s enemydummy matches 40 run tag @p[distance=..8] add likesucked

execute if score @s enemydummy matches 80.. run scoreboard players set @s enemydummy 1

execute if score @s enemydummy2 matches 1 as @p[tag=likesucked] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=likelike,scores={enemydummy2=1},limit=1,sort=nearest]
execute if score @s enemydummy2 matches 1 as @p[tag=likesucked] at @s rotated ~ 0 run tp @s ^ ^ ^0.4

execute if score @s enemydummy2 matches 1 if entity @p[distance=..1] run function alttp:likelike_steal

execute if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

execute as @p[tag=likesucked] unless entity @e[type=armor_stand,tag=likelike,scores={enemydummy2=1}] run tag @s remove likesucked

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a