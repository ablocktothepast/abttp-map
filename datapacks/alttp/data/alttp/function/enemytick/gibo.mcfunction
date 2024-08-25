#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=armor_stand,tag=gibobody] if score @s enemylink = @e[type=armor_stand,tag=gibo,limit=1,sort=nearest] enemylink run tag @s add link_c
execute as @e[type=silverfish,tag=gibosf] if score @s enemylink = @e[type=armor_stand,tag=gibo,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] as @e[type=armor_stand,tag=link_c] at @s run function alttp:enemy_death
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT AND STOPPING
scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 1.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {NoAI:0b}
execute if score @s enemydummy matches ..-1 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {NoAI:1b}

execute if score @s enemydummy matches 60.. run scoreboard players set @s enemydummy -100

#BODY FOLLOWS WEIRDY
execute as @e[type=armor_stand,tag=link_c] at @s facing entity @e[type=silverfish,tag=link_b,limit=1] feet run tp @s ^ ^ ^0.1

#INVULNERABLE WHEN BODY IS THERE
execute if entity @e[type=armor_stand,tag=link_c,distance=..0.5] run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute unless entity @e[type=armor_stand,tag=link_c,distance=..0.5] run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @e[type=armor_stand] remove link_c
tag @s remove link_a