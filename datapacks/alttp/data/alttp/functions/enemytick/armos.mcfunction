#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=armoszo] if score @s enemylink = @e[type=armor_stand,tag=armos,limit=1,sort=nearest] enemylink run tag @s add link_b

execute if score @s enemydummy matches 0.. unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 0.. run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:55}}}

execute if score @s enemydummy matches 1 run tp @s ~ ~ ~ facing entity @p
execute at @s if score @s enemydummy matches 1 run tp @s ~ ~ ~ ~ 0

execute if score @s enemydummy matches 2 unless entity @s[tag=icerodfrozen] run playsound alttp.bounce weather @p ~ ~ ~ 1 1


execute unless entity @s[tag=icerodfrozen] if block ^ ^ ^0.15 #gothrough if score @s enemydummy matches 2..19 run tp @s ^ ^ ^0.15

execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^0.3 ^ #gothrough if score @s enemydummy matches 2 run tp @s ^ ^0.3 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^0.25 ^ #gothrough if score @s enemydummy matches 3 run tp @s ^ ^0.25 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^0.2 ^ #gothrough if score @s enemydummy matches 4 run tp @s ^ ^0.2 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^0.15 ^ #gothrough if score @s enemydummy matches 5..6 run tp @s ^ ^0.15 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^0.1 ^ #gothrough if score @s enemydummy matches 7..10 run tp @s ^ ^0.1 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^-0.1 ^ #gothrough if score @s enemydummy matches 11..14 run tp @s ^ ^-0.1 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^-0.15 ^ #gothrough if score @s enemydummy matches 15..16 run tp @s ^ ^-0.15 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^-0.2 ^ #gothrough if score @s enemydummy matches 17 run tp @s ^ ^-0.2 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^-0.25 ^ #gothrough if score @s enemydummy matches 18 run tp @s ^ ^-0.25 ^
execute unless entity @s[tag=icerodfrozen] at @s if block ^ ^-0.3 ^ #gothrough if score @s enemydummy matches 19 run tp @s ^ ^-0.3 ^

execute if score @s enemydummy matches 30 run scoreboard players set @s enemydummy 0

execute unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 21.. if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute unless entity @s[tag=icerodfrozen] at @s if score @s enemydummy matches 21.. if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~

execute if entity @p[distance=..5] unless score @s enemydummy matches ..99999 run scoreboard players set @s enemydummy -1

execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death
tp @e[type=zombie,tag=link_b] ~ ~ ~

execute at @s if entity @e[type=arrow,distance=..1.5] as @e[type=zombie,tag=link_b] run damage @s 15
execute at @s if entity @e[type=arrow,distance=..1.5] run kill @e[type=arrow,distance=..1]

execute at @s positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] as @e[type=zombie,tag=link_b] run damage @s 15
execute at @s positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] run kill @e[type=arrow,distance=..1]

#shake
execute if score @s enemydummy matches ..-1 run scoreboard players remove @s enemydummy 1
execute if score @s enemydummy matches -2 run playsound minecraft:alttp.quake weather @a ~ ~ ~ 1 1
execute if score @s enemydummy matches ..-1 run particle block cobblestone ~ ~0.5 ~ 0 0 0 0.1 10 force 
execute if score @s enemydummy matches -2 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -3 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -4 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -5 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -6 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -7 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -8 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -9 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -10 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -11 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -12 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -13 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -14 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -15 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -16 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -17 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -18 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -19 run tp @s ^0.1 ^ ^
execute if score @s enemydummy matches -20 run tp @s ^-0.1 ^ ^
execute if score @s enemydummy matches -21 run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie,tag=link_b] remove link_b
tag @s remove link_a