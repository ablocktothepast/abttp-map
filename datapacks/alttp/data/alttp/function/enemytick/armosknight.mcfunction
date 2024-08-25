#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=marker,tag=armosknightma] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add link_b
execute as @e[type=slime,tag=armosknightzo] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add link_hitbox

#LINKY
tp @e[type=slime,tag=link_hitbox] @s
execute if entity @s[tag=link_init] unless entity @e[type=slime,tag=link_hitbox] unless entity @e[type=marker,tag=link_b,tag=final] run kill @e[type=marker,tag=link_b]
execute if entity @s[tag=link_init] unless entity @e[type=slime,tag=link_hitbox] unless entity @e[type=marker,tag=link_b,tag=final] run function alttp:enemy_death

execute if entity @s[tag=link_init] unless entity @e[type=slime,tag=link_hitbox] if entity @e[type=marker,tag=link_b,tag=final] run function alttp:armosknightdeath

#Move towards the destination marker
execute unless entity @e[type=marker,tag=link_b,tag=damaged] unless score @s enemydummy9 matches 0.. align y unless entity @e[type=marker,tag=link_b,distance=..0.2] at @s facing entity @e[type=marker,tag=link_b] eyes rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~

#Jump motion
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. run scoreboard players add @s enemydummy 1
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 1 at @s run tp @s ~ ~0.35 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 2 at @s run tp @s ~ ~0.25 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 3 at @s run tp @s ~ ~0.2 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 4 at @s run tp @s ~ ~0.1 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 5 at @s run tp @s ~ ~0.05 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 6 at @s run tp @s ~ ~0.01 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 7 at @s run tp @s ~ ~-0.01 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 8 at @s run tp @s ~ ~-0.05 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 9 at @s run tp @s ~ ~-0.1 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 10 at @s run tp @s ~ ~-0.2 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 11 at @s run tp @s ~ ~-0.25 ~
execute unless entity @e[type=marker,tag=link_b,tag=final] unless score @s enemydummy9 matches 0.. if score @s enemydummy matches 12 at @s run tp @s ~ ~-0.35 ~

execute unless score @s enemydummy9 matches 0.. unless entity @e[type=marker,tag=link_b,tag=nostomp] if score @s enemydummy matches 13.. run scoreboard players set @s enemydummy 0

#BIG STOMP
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] run scoreboard players add @s enemydummy2 1
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 1 run tp @s ~ ~0.45 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 2 run tp @s ~ ~0.4 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 3 run tp @s ~ ~0.35 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 4 run tp @s ~ ~0.25 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 5 run tp @s ~ ~0.1 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 6 run tp @s ~ ~0.05 ~

execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 12 run tp @s ~ ~-0.05 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 13 run tp @s ~ ~-0.1 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 14 run tp @s ~ ~-0.25 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 15 run tp @s ~ ~-0.35 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 16 run tp @s ~ ~-0.4 ~
execute at @s unless score @s enemydummy9 matches 0.. if entity @e[type=marker,tag=link_b,tag=bigstomp] if score @s enemydummy2 matches 17 run tp @s ~ ~-0.45 ~

execute if entity @e[type=marker,tag=link_b,tag=bigstomp,tag=!final] if score @s enemydummy2 matches 18.. run function alttp:summon/ak_sand
execute if entity @e[type=marker,tag=link_b,tag=bigstomp,tag=!final] if score @s enemydummy2 matches 18.. run scoreboard players set @p[distance=..3.5] set_damage 6
execute if score @s enemydummy2 matches 18.. if entity @e[type=marker,tag=link_b,tag=final] run particle block{block_state:"minecraft:sand"} ~ ~ ~ 2 0.2 2 0.35 50 force
execute if score @s enemydummy2 matches 18.. if entity @e[type=marker,tag=link_b,tag=final] run scoreboard players set @p[distance=..1.5] set_damage 3
execute if score @s enemydummy2 matches 18.. if entity @e[type=marker,tag=link_b,tag=final] run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy2 matches 18.. run tag @e[type=marker,tag=link_b,tag=!final] remove nostomp
execute if score @s enemydummy2 matches 26.. run tag @e[type=marker,tag=link_b,tag=!final] remove bigstomp
execute if score @s enemydummy2 matches 26.. run scoreboard players set @s enemydummy2 0

#DAMAGE INDICATOR
execute if entity @e[type=slime,tag=link_hitbox,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if entity @e[type=slime,tag=link_hitbox,nbt={HurtTime:10s}] run tag @e[type=marker,tag=link_b] add damaged
execute if entity @e[type=slime,tag=link_hitbox,nbt={HurtTime:10s}] run scoreboard players set @s enemydummy5 20

execute if score @s enemydummy5 matches 1.. run scoreboard players remove @s enemydummy5 1
execute if score @s enemydummy5 matches 1 run tag @e[type=marker,tag=link_b] remove damaged

execute if score @s enemydummy5 matches 19 at @s rotated as @p rotated ~ 0 if block ^ ^ ^1 #gothrough run tp @s ^ ^ ^0.7
execute if score @s enemydummy5 matches 18 at @s rotated as @p rotated ~ 0 if block ^ ^ ^0.85 #gothrough run tp @s ^ ^ ^0.55
execute if score @s enemydummy5 matches 17 at @s rotated as @p rotated ~ 0 if block ^ ^ ^0.7 #gothrough run tp @s ^ ^ ^0.4
execute if score @s enemydummy5 matches 16 at @s rotated as @p rotated ~ 0 if block ^ ^ ^0.6 #gothrough run tp @s ^ ^ ^0.3
execute if score @s enemydummy5 matches 15 at @s rotated as @p rotated ~ 0 if block ^ ^ ^0.4 #gothrough run tp @s ^ ^ ^0.1

#When last one
execute if entity @e[type=marker,tag=link_b,tag=final,tag=!nostomp] align y run tp @s ~ ~ ~
execute if entity @e[type=marker,tag=link_b,tag=final] run tag @e[type=marker,tag=link_b,tag=final] add nostomp
execute if entity @e[type=marker,tag=link_b,tag=final] run tag @e[type=marker,tag=link_b,tag=final] add bigstomp

#DAMAGING
execute unless score @s enemydummy9 matches 0.. unless score @s enemydummy3 matches 1.. if entity @p[distance=..2] run scoreboard players set @p set_damage 2
execute unless score @s enemydummy9 matches 0.. unless score @s enemydummy3 matches 1.. if entity @p[distance=..2] run scoreboard players set @s enemydummy3 30
execute unless score @s enemydummy9 matches 0.. if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=slime,tag=link_hitbox] run tag @s add link_init
tag @e remove link_hitbox
tag @e remove link_b
tag @e remove link_a