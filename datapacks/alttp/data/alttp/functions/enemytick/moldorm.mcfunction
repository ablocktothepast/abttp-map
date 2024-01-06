#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=armor_stand,tag=moldorm_body1] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add moldormbody1
execute as @e[type=armor_stand,tag=moldorm_body2] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add moldormbody2
execute as @e[type=armor_stand,tag=moldorm_body3] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add moldormbody3
execute as @e[type=armor_stand,tag=moldorm_body4] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add moldormbody4
execute as @e[type=zombie,tag=moldormzombie] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add moldormhitbox
execute as @e[type=armor_stand,tag=moldormhead] if score @s enemylink = @e[type=armor_stand,tag=link_a,limit=1,sort=nearest] enemylink run tag @s add moldorm_head

tag @e[type=armor_stand,tag=moldormbody1] add moldorm_body
tag @e[type=armor_stand,tag=moldormbody2] add moldorm_body
tag @e[type=armor_stand,tag=moldormbody3] add moldorm_body
tag @e[type=armor_stand,tag=moldormbody4] add moldorm_body

#enemydummy = movement type (0 = randomize!)
#enemydummy2 = movement timer
#enemydummy3 = current move length
#enemydummy4 = segmenting
#enemydummy5 = dead
#enemydummy6 = amount of attacks (before homing)
#enemydummy7 = homing timer
#enemydummy8 = vulnerable timer
#enemydummy9 = whether tail is purple or not
#enemydummy10 = purple tail timer
#enemydummy11 = purple tail damage cooldown
#enemydummy16 = wiggle offset

#Head model + wiggle
scoreboard players add @s enemydummy16 1
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 7.. run scoreboard players set @s enemydummy16 -5
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches -5 run tp @e[type=armor_stand,tag=moldorm_head] ^ ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches -4 run tp @e[type=armor_stand,tag=moldorm_head] ^-0.25 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches -3 run tp @e[type=armor_stand,tag=moldorm_head] ^-0.4 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches -2 run tp @e[type=armor_stand,tag=moldorm_head] ^-0.5 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches -1 run tp @e[type=armor_stand,tag=moldorm_head] ^-0.4 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 0 run tp @e[type=armor_stand,tag=moldorm_head] ^-0.25 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 1 run tp @e[type=armor_stand,tag=moldorm_head] ^ ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 2 run tp @e[type=armor_stand,tag=moldorm_head] ^0.25 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 3 run tp @e[type=armor_stand,tag=moldorm_head] ^0.4 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 4 run tp @e[type=armor_stand,tag=moldorm_head] ^0.5 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 5 run tp @e[type=armor_stand,tag=moldorm_head] ^0.4 ^ ^ ~ ~
execute unless score @s enemydummy matches 6 if score @s enemydummy16 matches 6 run tp @e[type=armor_stand,tag=moldorm_head] ^0.25 ^ ^ ~ ~
execute if score @s enemydummy matches 6 as @e[type=armor_stand,tag=moldorm_head] at @s run function alttp:moldormbodyticksquish

#INITIATING
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute unless score @s enemydummy9 matches 0.. run scoreboard players set @s enemydummy9 0

#SEGMENTS INITIATING
execute unless score @s enemydummy matches 6 unless score @s enemydummy matches 8 run scoreboard players add @s enemydummy4 1

#RANDOM MOVE & TIME SELECTION (1=left,2=right,3=home in,4=wall,5=straight,6=homing,7=attack,8=vulnerable)
execute if score @s enemydummy matches 0 store result score result rand run random value 1..40
execute if score @s enemydummy matches 0 store result score @s enemydummy3 run scoreboard players get result rand
execute if score @s enemydummy matches 0 run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy matches 0 run scoreboard players add @s enemydummy6 1
execute if score @s enemydummy matches 0 store result score result rand run random value 1..21
execute if score @s enemydummy matches 0 if score result rand matches 1..5 run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 if score result rand matches 6..10 run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0 if score result rand matches 11..16 run scoreboard players set @s enemydummy 3
execute if score @s enemydummy matches 0 if score result rand matches 17..21 run scoreboard players set @s enemydummy 5

#DEATH ANIMATION
execute if score @s enemydummy5 matches 1 run function alttp:moldormdeathtick

#MOVEMENT
execute if score @s enemydummy matches 1.. run scoreboard players add @s enemydummy2 1

execute at @s if score @s enemydummy matches 1.. run tp @s ~ ~ ~ ~ 0

execute at @s if score @s enemydummy matches 1 if block ^ ^ ^0.45 #gothrough run tp @s ^ ^ ^0.45 ~4 0
execute if score moldormh dummy matches ..30 at @s if score @s enemydummy matches 1 if block ^ ^ ^0.05 #gothrough run tp @s ^ ^ ^0.05 ~2 0

execute at @s if score @s enemydummy matches 2 if block ^ ^ ^0.45 #gothrough run tp @s ^ ^ ^0.45 ~-4 0
execute if score moldormh dummy matches ..30 at @s if score @s enemydummy matches 2 if block ^ ^ ^0.05 #gothrough run tp @s ^ ^ ^0.05 ~-2 0

execute at @s if score @s enemydummy matches 5 if block ^ ^ ^0.45 #gothrough run tp @s ^ ^ ^0.45 ~ 0
execute if score moldormh dummy matches ..30 at @s if score @s enemydummy matches 5 if block ^ ^ ^0.05 #gothrough run tp @s ^ ^ ^0.05 ~ 0

execute at @s if score @s enemydummy matches 3 anchored feet facing entity @p feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s feet facing ^ ^ ^-1 positioned as @s rotated ~ 0 if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.45 ~ ~
execute at @s if score moldormh dummy matches ..30 if score @s enemydummy matches 3 rotated ~ 0 if block ^ ^ ^0.1 #gothrough run tp @s ^ ^ ^0.05 ~ ~

execute at @s if score @s enemydummy matches 7 if entity @p[distance=..10] store result score result rand run random value 1..2
execute at @s if score @s enemydummy matches 7 as @p[distance=..10] at @s if score result rand matches 1 run tp @s ~ ~ ~ ~ ~2
execute at @s if score @s enemydummy matches 7 as @p[distance=..10] at @s if score result rand matches 2 run tp @s ~ ~ ~ ~ ~-2
execute at @s if score @s enemydummy matches 7 run playsound minecraft:alttp.quake weather @p ~ ~ ~ 0.7 1 0.7
execute at @s if score @s enemydummy matches 7 if block ^ ^ ^0.7 #gothrough run tp @s ^ ^ ^0.6 ~ 0
execute at @s if score @s enemydummy matches 7 if block ^ ^ ^0.7 stone_bricks run scoreboard players set @s enemydummy 4
execute at @s if score @s enemydummy matches 7 if block ^ ^ ^1.5 obsidian run scoreboard players set @s enemydummy8 0
execute at @s if score @s enemydummy matches 7 if block ^ ^ ^1.5 obsidian run scoreboard players set @s enemydummy 8
execute at @s if score @s enemydummy matches 7 if block ^1 ^ ^1.5 obsidian run scoreboard players set @s enemydummy8 0
execute at @s if score @s enemydummy matches 7 if block ^1 ^ ^1.5 obsidian run scoreboard players set @s enemydummy 8
execute at @s if score @s enemydummy matches 7 if block ^-1 ^ ^1.5 obsidian run scoreboard players set @s enemydummy8 0
execute at @s if score @s enemydummy matches 7 if block ^-1 ^ ^1.5 obsidian run scoreboard players set @s enemydummy 8
execute at @s if score @s enemydummy matches 7 run particle block sandstone ~ ~ ~ 1 0.5 1 0.4 30 force
execute at @s if score @s enemydummy matches 7 run particle block sandstone ^-1.5 ^ ^ 0.5 1 0.5 0.4 20 force
execute at @s if score @s enemydummy matches 7 run particle block sandstone ^1.5 ^ ^ 0.5 1 0.5 0.4 20 force

execute if score moldormh dummy matches ..30 run particle large_smoke ~ ~0.5 ~ 0 0 0 0 1

execute at @s if score @s enemydummy matches 1..5 unless block ^ ^ ^0.5 #gothrough run tag @s add walled

execute at @s if entity @s[tag=walled] if score @s enemydummy matches 4 run tp @s ~ ~ ~ ~90 ~
execute at @s if entity @s[tag=walled] unless score @s enemydummy matches 4 run tp @s ~ ~ ~ ~180 ~
execute at @s if entity @s[tag=walled] run scoreboard players set @s enemydummy 4
execute at @s if entity @s[tag=walled] run scoreboard players set @s enemydummy2 0
execute at @s if entity @s[tag=walled] run scoreboard players set @s enemydummy3 1000
execute at @s if entity @s[tag=walled] run tag @s remove walled

execute at @s if score @s enemydummy matches 4 if block ^ ^ ^0.3 #gothrough run tp @s ^ ^ ^0.3 ~ 0
execute at @s if score @s enemydummy matches 4 if block ^ ^ ^0.3 #gothrough if block ^ ^ ^-0.3 #gothrough if block ^0.3 ^ ^ #gothrough if block ^-0.3 ^ ^ #gothrough run scoreboard players set @s enemydummy 0

execute at @s if score @s enemydummy matches 3 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 3 rotated ~ 0 if block ^ ^ ^-10 #gothrough positioned ^ ^ ^5 if entity @p[distance=..20] if score @s enemydummy2 = @s enemydummy3 if score @s enemydummy6 matches 15.. run scoreboard players set @s enemydummy7 0
execute if score @s enemydummy matches 3 rotated ~ 0 if block ^ ^ ^-10 #gothrough positioned ^ ^ ^5 if entity @p[distance=..20] if score @s enemydummy2 = @s enemydummy3 if score @s enemydummy6 matches 15.. run scoreboard players set @s enemydummy 6

execute if score @s enemydummy matches 1..5 if score @s enemydummy2 = @s enemydummy3 run scoreboard players set @s enemydummy 0

execute unless score @s enemydummy matches 6 unless score @s enemydummy matches 8 run summon marker ~ ~ ~ {Tags:["molcp"]}
execute unless score @s enemydummy matches 6 unless score @s enemydummy matches 8 run tp @e[type=marker,tag=molcp,tag=!purplegoo,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute unless score @s enemydummy matches 6 unless score @s enemydummy matches 8 store result score @e[type=marker,tag=molcp,limit=1,sort=nearest] enemydummy4 run scoreboard players get @s enemydummy4
execute if score @s enemydummy matches 7 unless score @s enemydummy5 matches 1 as @e[type=armor_stand,tag=moldorm_body] at @s run function alttp:moldormbodytickfast
execute unless score @s enemydummy matches 6..8 unless score @s enemydummy5 matches 1 as @e[type=armor_stand,tag=moldorm_body] at @s run function alttp:moldormbodytick
execute if score @s enemydummy matches 6 unless score @s enemydummy5 matches 1 as @e[type=armor_stand,tag=moldorm_body] at @s run function alttp:moldormbodyticksquish

#Homing attack
execute if score @s enemydummy matches 6 run scoreboard players set @s enemydummy6 0
execute if score @s enemydummy matches 6 run scoreboard players add @s enemydummy7 1
execute if score @s enemydummy matches 6 at @s anchored feet facing entity @p feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s feet facing ^ ^ ^-1 positioned as @s positioned ^ ^ ^-3 if entity @e[type=armor_stand,tag=moldormbody1,distance=..2.5] positioned ^ ^ ^3 run tp @s ~ ~ ~ ~ ~
execute if score @s enemydummy matches 6 run particle block sand ~ ~0.25 ~ 0.5 0.3 0.5 0.5 50 force
execute if score @s enemydummy matches 6 at @e[type=armor_stand,tag=moldormbody1] run particle block sand ~ ~0.25 ~ 0.3 0.3 0.3 0.5 50 force
execute if score @s enemydummy matches 6 at @e[type=armor_stand,tag=moldormbody2] run particle block sand ~ ~0.25 ~ 0.3 0.3 0.3 0.5 40 force
execute if score @s enemydummy matches 6 at @e[type=armor_stand,tag=moldormbody3] run particle block sand ~ ~0.25 ~ 0.2 0.2 0.2 0.5 30 force
execute if score @s enemydummy matches 6 at @e[type=armor_stand,tag=moldormbody4] run particle block sand ~ ~0.25 ~ 0.1 0.1 0.1 0.5 20 force
execute if score @s enemydummy matches 6 if score @s enemydummy7 matches 80.. run scoreboard players set @s enemydummy 7

#Vulnerable state
execute if score @s enemydummy matches 8 run data merge entity @e[type=armor_stand,tag=moldormbody2,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:220}},{}]}
execute if score @s enemydummy matches 8 run scoreboard players set @s enemydummy9 1
execute if score @s enemydummy matches 8 run data merge entity @e[type=armor_stand,tag=moldorm_head,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:219}},{}]}
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 1..2 as @e[type=armor_stand,tag=moldorm_body] at @s run tp @s ^ ^ ^-0.4
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 3..4 as @e[type=armor_stand,tag=moldorm_body] at @s run tp @s ^ ^ ^-0.35
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 5..6 as @e[type=armor_stand,tag=moldorm_body] at @s run tp @s ^ ^ ^-0.25
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 7..8 as @e[type=armor_stand,tag=moldorm_body] at @s run tp @s ^ ^ ^-0.15
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 9..10 as @e[type=armor_stand,tag=moldorm_body] at @s run tp @s ^ ^ ^-0.05
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 1..2 run tp @s ^ ^ ^-0.4
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 3..4 run tp @s ^ ^ ^-0.35
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 5..6 run tp @s ^ ^ ^-0.25
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 7..8 run tp @s ^ ^ ^-0.2
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 9..10 run tp @s ^ ^ ^-0.15
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 11 as @e[type=armor_stand,tag=moldorm_body] unless block ~ ~ ~ #gothrough run scoreboard players set @s enemydummy8 140
execute if score @s enemydummy matches 8 run scoreboard players add @s enemydummy8 1
execute if score @s enemydummy matches 8 at @e[type=armor_stand,tag=moldormbody2] run particle block red_wool ~ ~ ~ 1 1.5 1 0 50 force
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 100.. run data merge entity @e[type=armor_stand,tag=moldormbody2,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:216}},{}]}
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 100.. run data merge entity @e[type=armor_stand,tag=moldorm_head,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:214}},{}]}
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 100.. run scoreboard players set @s enemydummy9 0
execute if score @s enemydummy matches 8 if score @s enemydummy8 matches 100.. run scoreboard players set @s enemydummy 4

#Purple tail
execute if score @s enemydummy9 matches 0 run data merge entity @e[type=armor_stand,tag=moldormbody4,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:218}},{}]}
execute if score @s enemydummy9 matches 1 run data merge entity @e[type=armor_stand,tag=moldormbody4,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:221}},{}]}
data merge entity @e[type=zombie,tag=moldormhitbox,limit=1] {Invulnerable:0b}
execute unless score @s enemydummy matches 8 if score @s enemydummy9 matches 1 run data merge entity @e[type=zombie,tag=moldormhitbox,limit=1] {Invulnerable:1b}
execute unless score @s enemydummy matches 8 if score @s enemydummy9 matches 1 run effect give @e[type=zombie,tag=moldormhitbox] resistance 1 255 true
execute if score @s enemydummy9 matches 1 at @e[type=armor_stand,tag=moldormbody4] run particle block purple_concrete_powder ~ ~ ~ 0.5 1 0.5 10 20 force
execute if score @s enemydummy9 matches 1 at @e[type=armor_stand,tag=moldormbody4] run summon marker ~ ~ ~ {Tags:["purplegoo"]}
execute as @e[type=marker,tag=purplegoo] at @s run particle block purple_concrete_powder ~ ~0.5 ~ 0.5 0.2 0.5 10 1 force
execute as @e[type=marker,tag=purplegoo] at @s unless score @s enemydummy11 matches 1.. run scoreboard players set @p[distance=..2] set_damage 1
execute as @e[type=marker,tag=purplegoo] at @s if entity @p[distance=..2] unless score @s enemydummy11 matches 1.. run scoreboard players set @s enemydummy11 5
execute as @e[type=marker,tag=purplegoo] run scoreboard players add @s dummy 1
execute as @e[type=marker,tag=purplegoo] if score @s dummy matches 60.. run kill @s
execute if score @s enemydummy11 matches 1.. run scoreboard players remove @s enemydummy11 1
execute if score @s enemydummy10 matches 1.. run scoreboard players remove @s enemydummy10 1
execute if score @s enemydummy10 matches 1 run scoreboard players set @s enemydummy9 0

#HITBOX
execute unless score @s enemydummy matches 8 run tp @e[type=zombie,tag=moldormhitbox] @e[type=armor_stand,tag=moldormbody4,limit=1]
execute if score @s enemydummy matches 8 run tp @e[type=zombie,tag=moldormhitbox] @e[type=armor_stand,tag=moldormbody2,limit=1]

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=moldormhitbox,nbt={HurtTime:10s}] run playsound alttp.boss_hit weather @p ~ ~ ~ 1 1
execute unless score @s enemydummy matches 8 unless score @s enemydummy9 matches 1 if entity @e[type=zombie,tag=moldormhitbox,nbt={HurtTime:10s}] run scoreboard players set @s enemydummy10 50
execute unless score @s enemydummy matches 8 unless score @s enemydummy9 matches 1 if entity @e[type=zombie,tag=moldormhitbox,nbt={HurtTime:10s}] run scoreboard players set @s enemydummy9 1
execute if entity @e[type=zombie,tag=moldormhitbox,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if score @s enemydummy matches 8 if entity @e[type=zombie,tag=moldormhitbox,nbt={HurtTime:10s}] run damage @e[type=zombie,tag=moldormhitbox,limit=1] 7 player_attack

#Kill molcp after much while haha engrish
execute if score @s enemydummy matches 1..5 as @e[type=marker,tag=molcp] run scoreboard players add @s dummy 1
execute as @e[type=marker,tag=molcp] if score @s dummy matches 200.. run kill @s

#DAMAGING
execute unless score moldormcd dummy matches 1.. as @e[type=armor_stand,tag=moldormbody1] at @s run scoreboard players set @p[distance=..2.1] set_damage 3
execute as @e[type=armor_stand,tag=moldormbody1] at @s if entity @p[distance=..2.1] run summon marker ~ ~ ~ {Tags:["knocky"]}
execute unless score moldormcd dummy matches 1.. as @e[type=armor_stand,tag=moldormbody1] at @s if entity @p[distance=..2.1] run scoreboard players set moldormcd dummy 30

execute unless score moldormcd dummy matches 1.. as @e[type=armor_stand,tag=moldormbody2] at @s run scoreboard players set @p[distance=..1.6] set_damage 3
execute as @e[type=armor_stand,tag=moldormbody2] at @s if entity @p[distance=..1.6] run summon marker ~ ~ ~ {Tags:["knocky"]}
execute unless score moldormcd dummy matches 1.. as @e[type=armor_stand,tag=moldormbody2] at @s if entity @p[distance=..1.6] run scoreboard players set moldormcd dummy 30

execute unless score moldormcd dummy matches 1.. as @e[type=armor_stand,tag=moldormbody3] at @s run scoreboard players set @p[distance=..1.2] set_damage 3
execute as @e[type=armor_stand,tag=moldormbody3] at @s if entity @p[distance=..1.5] run summon marker ~ ~ ~ {Tags:["knocky"]}
execute unless score moldormcd dummy matches 1.. as @e[type=armor_stand,tag=moldormbody3] at @s if entity @p[distance=..1.5] run scoreboard players set moldormcd dummy 30

execute unless score moldormcd dummy matches 1.. run scoreboard players set @p[distance=..2.75] set_damage 3
execute if entity @p[distance=..2.75] run summon marker ~ ~ ~ {Tags:["knocky"]}
execute unless score moldormcd dummy matches 1.. if entity @p[distance=..2.75] run scoreboard players set moldormcd dummy 30

execute if score moldormcd dummy matches 1.. run scoreboard players remove moldormcd dummy 1

#BOSSBAR
execute store result score moldormh dummy run data get entity @e[type=zombie,tag=moldormhitbox,limit=1] Health
execute store result bossbar moldorm value run data get entity @e[type=zombie,tag=moldormhitbox,limit=1] Health

#DEATH
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=moldormhitbox] run scoreboard players set @s enemydummy5 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=moldormhitbox] run tag @s add link_init
tag @e[type=armor_stand] remove moldorm_body
tag @e[type=armor_stand] remove moldormbody1
tag @e[type=armor_stand] remove moldormbody2
tag @e[type=armor_stand] remove moldormbody3
tag @e[type=armor_stand] remove moldormbody4
tag @s remove link_a
tag @e[type=zombie] remove moldormhitbox