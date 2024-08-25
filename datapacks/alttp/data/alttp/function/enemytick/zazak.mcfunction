#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=zazakzo] if score @s enemylink = @e[type=armor_stand,tag=zazak,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#SOMEHOW CHARGING AT ENEMIES
scoreboard players set @s enemydummy 0
execute unless score @s enemydummy2 matches -2147483648..2147483647 run scoreboard players set @s enemydummy2 -80

execute rotated ~ 0 positioned ^ ^ ^1 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^1.5 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^2 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^2.5 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^3 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^3.5 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^4 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^4.5 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1
execute rotated ~ 0 positioned ^ ^ ^5 if entity @p[distance=..0.7] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1 if score @s enemydummy2 matches -80 run scoreboard players set @s enemydummy2 20

execute if score @s enemydummy2 matches -79.. run scoreboard players remove @s enemydummy2 1
execute if score @s enemydummy2 matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:1b}
execute unless score @s enemydummy2 matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b}
execute if score @s enemydummy2 matches 1.. as @e[type=zombie,tag=link_b] at @s rotated ~ 0 if block ^ ^ ^0.4 #gothrough run tp @s ^ ^ ^0.4

execute if score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..0.5] set_damage 6
execute if score @s enemydummy2 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @s enemydummy2 0

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a