#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=red_stalfoszo] if score @s enemylink = @e[type=armor_stand,tag=red_stalfos,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
execute if score @s enemydummy2 matches 1.. run tp @e[type=zombie,tag=link_b] @s
execute if score @s enemydummy2 matches ..-10 run tp @e[type=zombie,tag=link_b] @s
execute unless score @s enemydummy2 matches 1.. unless score @s enemydummy2 matches ..-10 run tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#INVULNERABLE ON GROUND
# effect give @e[type=zombie,tag=link_b] slow_falling 2 255 true
effect give @e[type=zombie,tag=link_b] resistance 1 255 true
execute at @s if score @s enemydummy2 matches 1.. unless block ^ ^ ^-0.5 #gothrough run effect clear @e[type=zombie,tag=link_b] resistance
execute if score @s enemydummy2 matches ..0 as @e[type=zombie,tag=link_b] at @s if block ~ ~-0.1 ~ #gothrough run effect clear @s resistance

#Epic movement models
execute store result score @s enemydummy8 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[0] 100
execute store result score @s enemydummy9 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[2] 100
scoreboard players set @s enemydummy7 1
execute if score @s enemydummy8 matches 0 if score @s enemydummy9 matches 0 run scoreboard players set @s enemydummy7 0

execute if score @s enemydummy7 matches 0 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:175}},{}]}
execute if score @s enemydummy7 matches 1 run scoreboard players add @s enemydummy10 1
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 9.. run scoreboard players set @s enemydummy10 1
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 1..4 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:176}},{}]}
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 5..8 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:177}},{}]}

#DAMAGE INDICATOR
execute store result score @s enemydummy15 run data get entity @e[type=zombie,tag=link_b,limit=1] HurtTime
execute at @s if score @s enemydummy2 matches 1.. unless block ^ ^ ^-0.5 #gothrough if score @s enemydummy15 matches 9 run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if score @s enemydummy2 matches ..0 as @e[type=zombie,tag=link_b] at @s if block ~ ~-0.1 ~ #gothrough if entity @s[nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#BONER
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 55..56 unless entity @s[tag=icerodfrozen] run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:181}},{}]}
execute if score @s enemydummy matches 57..59 unless entity @s[tag=icerodfrozen] run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:182}},{}]}
execute if score @s enemydummy matches 60..64 unless entity @s[tag=icerodfrozen] run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:183}},{}]}
execute if score @s enemydummy matches 60 unless entity @s[tag=icerodfrozen] run function alttp:stalfos_boner
execute if score @s enemydummy matches 100.. run scoreboard players set @s enemydummy 0

#Jump backward when really close
execute if score @s enemydummy2 matches ..-1 unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy2 matches 1.. unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy2 1
execute if entity @p[distance=..3] unless score @s enemydummy2 matches 1.. unless score @s enemydummy2 matches ..-1 unless entity @s[tag=icerodfrozen] run scoreboard players set @s enemydummy2 1
execute if score @s enemydummy2 matches 1 facing entity @p eyes unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~ 0
execute at @s if score @s enemydummy2 matches 2.. run tp @s ~ ~ ~ ~ 0
execute at @s if score @s enemydummy2 matches 1..30 if block ^ ^ ^-0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^-0.3
execute at @s if score @s enemydummy2 matches 1..2 if block ~ ~0.2 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.2 ~
execute at @s if score @s enemydummy2 matches 3..4 if block ~ ~0.15 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.15 ~
execute at @s if score @s enemydummy2 matches 5..6 if block ~ ~0.1 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.1 ~
execute at @s if score @s enemydummy2 matches 7 if block ~ ~0.05 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.05 ~
execute at @s if score @s enemydummy2 matches 8 if block ~ ~0.01 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.01 ~
execute at @s if score @s enemydummy2 matches 9 if block ~ ~-0.01 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.01 ~
execute at @s if score @s enemydummy2 matches 10 if block ~ ~-0.05 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy2 matches 11..12 if block ~ ~-0.1 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy2 matches 13..14 if block ~ ~-0.15 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.15 ~
execute at @s if score @s enemydummy2 matches 15..16 if block ~ ~-0.2 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.2 ~
execute at @s if score @s enemydummy2 matches 17.. if block ~ ~-0.2 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.2 ~
execute at @s if score @s enemydummy2 matches 17.. if block ~ ~-0.05 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy2 matches 17.. unless block ~ ~-0.05 ~ #gothrough run scoreboard players set @s enemydummy2 -20

execute if score @s enemydummy2 matches 1..4 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:178}},{}]}
execute if score @s enemydummy2 matches 5..14 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:179}},{}]}
execute if score @s enemydummy2 matches 15..16 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:180}},{}]}

#Stop chasing player if too close, only chase to a certain distance to throw bones
execute if entity @p[distance=..7] run team join stalfos_away @e[type=zombie,tag=red_stalfoszo]
execute unless entity @p[distance=..7] run team leave @s

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a