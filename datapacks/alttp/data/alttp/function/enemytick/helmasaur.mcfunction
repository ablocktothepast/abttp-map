#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=helmasaursf] if score @s enemylink = @e[type=armor_stand,tag=helmasaur,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#INVULNERABILITY
execute positioned ^ ^ ^-8 if entity @p[distance=..8] run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}
execute positioned ^ ^ ^-8 unless entity @p[distance=..8] run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}

#CHARGE SPEED
execute positioned ^ ^ ^7 if entity @p[distance=..7] run attribute @e[type=silverfish,tag=link_b,limit=1] generic.movement_speed base set 0.35
execute positioned ^ ^ ^7 unless entity @p[distance=..7] run attribute @e[type=silverfish,tag=link_b,limit=1] generic.movement_speed base set 0.2

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a