#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=wandering_trader,tag=castleguardwa] if score @s enemylink = @e[type=armor_stand,tag=castleguard,limit=1,sort=nearest] enemylink run tag @s add link_b
execute as @e[type=marker,tag=castleguardma] if score @s enemylink = @e[type=armor_stand,tag=castleguard,limit=1,sort=nearest] enemylink run tag @s add link_c
execute as @e[type=text_display,tag=castleguardte] if score @s enemylink = @e[type=armor_stand,tag=castleguard,limit=1,sort=nearest] enemylink run tag @s add link_t
execute as @e[type=text_display,tag=castleguardqu] if score @s enemylink = @e[type=armor_stand,tag=castleguard,limit=1,sort=nearest] enemylink run tag @s add link_q

#Teleport me to zombie
tp @s @e[type=wandering_trader,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=wandering_trader,tag=link_b] run function alttp:enemy_death

#Targeting goals
execute store result entity @e[type=wandering_trader,tag=link_b,limit=1] WanderTarget.X int 1 run data get entity @e[type=marker,tag=link_c,limit=1] Pos[0]
execute store result entity @e[type=wandering_trader,tag=link_b,limit=1] WanderTarget.Y int 1 run data get entity @e[type=marker,tag=link_c,limit=1] Pos[1]
execute store result entity @e[type=wandering_trader,tag=link_b,limit=1] WanderTarget.Z int 1 run data get entity @e[type=marker,tag=link_c,limit=1] Pos[2]

#Types of goals
execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 1
execute unless score @s enemydummy matches 0 run scoreboard players set @s enemydummy6 -1
#0 = player
#1 = wandering
#2 = sound heard
execute if score @s enemydummy matches 0 run scoreboard players remove @s enemydummy4 1
execute if score @s enemydummy matches 0 if score @s enemydummy4 matches ..0 if entity @p[distance=..10] facing entity @p eyes rotated ~ 0 run function alttp:castleguardraycastbig
execute if score @s enemydummy matches 0 if score @s enemydummy4 matches ..0 run scoreboard players set @s enemydummy5 30
execute if score @s enemydummy matches 0 if score @s enemydummy4 matches ..0 run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 1 run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 40.. run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 30 run spreadplayers ~ ~ 5 10 false @e[type=marker,tag=link_c]
execute if score @s enemydummy matches 2 if entity @e[type=marker,tag=link_c,distance=..3.5] unless entity @e[type=armor_stand,tag=bomb,distance=..3.5] run scoreboard players set @s enemydummy5 30
execute if score @s enemydummy matches 2 if entity @e[type=marker,tag=link_c,distance=..3.5] run kill @e[type=arrow,limit=1,sort=nearest]
execute if score @s enemydummy matches 2 if entity @e[type=marker,tag=link_c,distance=..3.5] unless entity @e[type=armor_stand,tag=bomb,distance=..3.5] run scoreboard players set @s enemydummy 1

#Detect & set goals
#Arrow
execute if score @s enemydummy matches 1 if entity @e[type=arrow,nbt={inGround:1b},distance=..15] run tp @e[type=marker,tag=link_c] @e[type=arrow,distance=..15,limit=1]
execute if score @s enemydummy matches 1 if entity @e[type=arrow,nbt={inGround:1b},distance=..15] run scoreboard players set @s enemydummy3 30
execute if score @s enemydummy matches 1 if entity @e[type=arrow,nbt={inGround:1b},distance=..15] run scoreboard players set @s enemydummy 2
#Bomb
execute if score @s enemydummy matches 1 if entity @e[type=armor_stand,tag=bomb,distance=..15] run tp @e[type=marker,tag=link_c] @e[type=armor_stand,tag=bomb,distance=..15,limit=1]
execute if score @s enemydummy matches 1 if entity @e[type=armor_stand,tag=bomb,distance=..15] run scoreboard players set @s enemydummy3 30
execute if score @s enemydummy matches 1 if entity @e[type=armor_stand,tag=bomb,distance=..15] run scoreboard players set @s enemydummy 2
#Player (different areas around them)
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches -1 store result score result rand run random value 1..19
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches -1 store result score @s enemydummy6 run scoreboard players get result rand
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 1 run tp @e[type=marker,tag=link_c] @p
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 2 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^ ^ ^6
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 3 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^4 ^ ^-4
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 4 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^1 ^ ^4
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 5 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^-3 ^ ^4
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 6 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^ ^ ^3
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 7 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^ ^ ^-3
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 8 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^3 ^ ^
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 9 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^-3 ^ ^
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 10 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^2 ^ ^-2
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 11 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^2 ^ ^2
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 12 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^-2 ^ ^-2
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 13 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^-2 ^ ^2
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 14 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^ ^ ^-5
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 15 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^ ^ ^-7
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 16 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^4 ^ ^
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 17 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^-4 ^ ^
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 18 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^4 ^ ^-2
execute if score @s enemydummy matches 0 if score @s enemydummy6 matches 19 at @p rotated ~ 0 run tp @e[type=marker,tag=link_c] ^-4 ^ ^-2

#Player
execute unless score @s enemydummy matches 0 if entity @p[distance=..10] rotated ~ 0 run function alttp:castleguardraycast

#Text over head when notified of something
execute if score @s enemydummy3 matches 1.. run scoreboard players set @s enemydummy5 0
execute if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1
execute if score @s enemydummy3 matches 29 run playsound minecraft:block.amethyst_block.hit weather @p ~ ~ ~ 2 2
execute if score @s enemydummy3 matches 1.. run tp @e[type=text_display,tag=link_t] ~ ~1 ~
execute unless score @s enemydummy3 matches 1.. run tp @e[type=text_display,tag=link_t] ~ ~-3 ~

execute if score @s enemydummy5 matches 1.. run scoreboard players remove @s enemydummy5 1
execute if score @s enemydummy5 matches 29 run playsound minecraft:block.amethyst_block.hit weather @p ~ ~ ~ 2 0.5
execute if score @s enemydummy5 matches 1.. run tp @e[type=text_display,tag=link_q] ~ ~1 ~
execute unless score @s enemydummy5 matches 1.. run tp @e[type=text_display,tag=link_q] ~ ~-3 ~

#Wandering trader stuff
effect give @e[type=wandering_trader,tag=link_b] invisibility infinite 1 true
data merge entity @e[type=wandering_trader,tag=link_b,limit=1] {HandItems: [{count: 1, id: "minecraft:air"}, {}]}

execute at @e[type=marker,tag=link_c] run particle angry_villager ~ ~ ~

#If guard following player within 5 blocks, start following player
execute unless score @s enemydummy matches 0 if entity @e[type=armor_stand,tag=castleguard,distance=0.1..5,scores={enemydummy=0}] if entity @p[distance=..10] run scoreboard players set @s enemydummy3 30
execute unless score @s enemydummy matches 0 if entity @e[type=armor_stand,tag=castleguard,distance=0.1..5,scores={enemydummy=0}] if entity @p[distance=..10] run scoreboard players set @s enemydummy4 80
execute unless score @s enemydummy matches 0 if entity @e[type=armor_stand,tag=castleguard,distance=0.1..5,scores={enemydummy=0}] if entity @p[distance=..10] run scoreboard players set @s enemydummy 0

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=wandering_trader,tag=link_b] run tag @s add link_init
tag @e remove link_b
tag @e remove link_q
tag @e remove link_t
tag @e remove link_c
tag @e remove link_a