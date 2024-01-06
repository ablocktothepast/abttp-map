#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=eyegorezo] if score @s enemylink = @e[type=armor_stand,tag=eyegore,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#ONLY 'ALIVE' WHEN PLAYER IN SIGHT
execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1
execute if entity @p[distance=..3] run scoreboard players set @s enemydummy 140
execute if block ~ ~-0.01 ~ air run scoreboard players add @s enemydummy 1

execute unless score @s enemydummy matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:1b}
execute if score @s enemydummy matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b}

execute unless score @s enemydummy matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:0b}

execute if score @s enemydummy matches 1.. positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=thrownpot,distance=..2.5] run kill @e[type=zombie,tag=link_b]
execute if score @s enemydummy matches 1.. positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] run kill @e[type=zombie,tag=link_b]

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a