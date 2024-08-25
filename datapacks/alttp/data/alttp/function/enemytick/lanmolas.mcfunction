# Find linked entities
tag @s add link_a
execute as @e[type=armor_stand,tag=lanmolasbody1] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add body1
execute as @e[type=armor_stand,tag=lanmolasbody2] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add body2
execute as @e[type=armor_stand,tag=lanmolasbody3] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add body3
execute as @e[type=armor_stand,tag=lanmolasbody4] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add body4
execute as @e[type=armor_stand,tag=lanmolasbody5] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add body5
execute as @e[type=armor_stand,tag=lanmolasbody6] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add body6
execute as @e[type=armor_stand,tag=lanmolasbody7] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add body7
execute as @e[type=slime,tag=lanmolassl] if score @s enemylink = @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run tag @s add hitbox

execute if score @s enemydummy matches 5 run function alttp:lanmolas_t_init

# Add necessary tags
tag @s add body_segment
tag @e[type=armor_stand,tag=body1] add body_segment
tag @e[type=armor_stand,tag=body2] add body_segment
tag @e[type=armor_stand,tag=body3] add body_segment
tag @e[type=armor_stand,tag=body4] add body_segment
tag @e[type=armor_stand,tag=body5] add body_segment
tag @e[type=armor_stand,tag=body6] add body_segment
tag @e[type=armor_stand,tag=body7] add body_segment

# General upticking of enemydummy (global)
execute unless score @s enemydummy5 matches 0.. run scoreboard players add @s enemydummy 1

# Visibility
execute as @e[type=armor_stand,tag=body_segment] if entity @s[tag=visible,tag=!angry] run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 167}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute as @e[type=armor_stand,tag=body_segment] if entity @s[tag=visible,tag=angry] run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 169}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute as @e[type=armor_stand,tag=body_segment] unless entity @s[tag=visible] run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:air"}, {}]}

# Timer = 25, remove coordination tags
execute if score @s enemydummy matches 25 if entity @s[tag=ready] run function alttp:lanmolas_removecoordination

# Timer = 31, possible random interval offset
execute if score @s enemydummy matches 31 unless entity @s[tag=intervalled] run function alttp:lanmolas_randominterval

# Timer = 35, choose random position
execute if score @s enemydummy matches 33 run function alttp:lanmolas_randomposition_init
execute if score @s enemydummy matches 35 run function alttp:lanmolas_randomposition

# Go back into the ground before jumping
execute if score @s enemydummy matches 40 run tp @e[type=armor_stand,tag=body_segment] ~ ~-1 ~ ~ ~
execute if score @s enemydummy matches 40 run scoreboard players set @s enemydummy6 0
execute if score @s enemydummy matches 40 run tag @s remove wallhit
execute if score @s enemydummy matches 40 run scoreboard players add @s enemydummy11 1

# Show sand particles right before popping out & less after jumping
# Random attack
execute unless score @s enemydummy11 matches 3 if score @s enemydummy matches 50..140 as @e[type=armor_stand,tag=body_segment] at @s unless block ~ ~0.7 ~ #gothrough run particle block{block_state:"minecraft:sand"} ~ ~0.7 ~ 1 0.2 1 0.2 30 force
execute unless score @s enemydummy11 matches 3 if score @s enemydummy matches 50..140 as @e[type=armor_stand,tag=body_segment] at @s unless block ~ ~0.7 ~ #gothrough run playsound block.sand.break weather @p ~ ~ ~ 0.3
# Coordinated attack 2
execute if score @s enemydummy11 matches 2 if score @s enemydummy18 matches 2 if score @s enemydummy matches 50..90 run function alttp:lanmolas_mytick_coordinatedattack_2_sand

# Timer = 70, initiate jump
execute unless score @s enemydummy11 matches 3 if score @s enemydummy matches 70 run function alttp:lanmolas_t_70

# Timer = 75, check if facing a full wall
execute unless score @s enemydummy11 matches 3 if score @s enemydummy matches 75 unless block ^ ^4 ^1 #gothrough run scoreboard players set @s enemydummy 69

# Timer = 50, check if it is a coordinated attack
execute if score @s enemydummy matches 50 run scoreboard players set @s enemydummy18 0
execute if score @s enemydummy matches 50 if score @s enemydummy11 matches 3 unless entity @e[type=armor_stand,tag=lanmolas,tag=ready] run function alttp:lanmolas_preparecoordination
execute if score @s enemydummy matches 50 if score @s enemydummy11 matches 3 if entity @e[type=armor_stand,tag=lanmolas,tag=ready,distance=0.1..] run function alttp:lanmolas_copycoordination
execute if score @s enemydummy matches 50 if score @s enemydummy18 matches 0 run scoreboard players set @s enemydummy8 1

# Timer = 79, wait for all Lanmolas to be ready
execute if entity @s[tag=ready] if score @s enemydummy matches 79 run tag @s add readyready
execute if entity @s[tag=coordinator] if score @s enemydummy matches 79 run function alttp:lanmolas_checkcoordination
execute if entity @s[tag=ready] if score @s enemydummy matches 79 unless entity @e[type=armor_stand,tag=lanmolas,tag=coordinator,tag=coordinated] run scoreboard players set @s enemydummy 78

# Timer = 80, become visible and spew rocks
execute if score @s enemydummy matches 80 run tag @e[type=armor_stand,tag=body_segment] add visible
execute if score @s enemydummy matches 80 positioned ~ ~1.3 ~ run function alttp:lanmolas_spewrocks

# enemydummy = global timer
# enemydummy = personal timer
# enemydummy8 = attack type
execute if score @s enemydummy matches 80 run function alttp:lanmolas_t_80

# Random attack
execute if score @s enemydummy matches 80.. run scoreboard players add @e[type=armor_stand,tag=body_segment] enemydummy2 1
execute if score @s enemydummy matches 80.. if score @s enemydummy8 matches 1 as @e[type=armor_stand,tag=body_segment] at @s run function alttp:lanmolas_mytick_attackrand

# Coordinated attack 1 (Tornado)
execute if entity @s[tag=coordinator] if score @s enemydummy18 matches 1 if score @s enemydummy matches 80.. if score @s enemydummy2 matches ..90 if score @s enemydummy8 matches 2 as @e[type=marker,tag=lanmolas_rotator] at @s run function alttp:lanmolas_rotator_align
execute if score @s enemydummy matches 80.. if score @s enemydummy18 matches 1 if score @s enemydummy2 matches ..90 if score @s enemydummy8 matches 2 as @e[type=marker,tag=lanmolas_rotator] at @s run function alttp:lanmolas_rotator_alignme
execute if score @s enemydummy matches 80.. if score @s enemydummy18 matches 1 if score @s enemydummy8 matches 2 as @e[type=armor_stand,tag=body_segment] at @s run function alttp:lanmolas_mytick_coordinatedattack_1_1
execute if score @s enemydummy matches 80.. if score @s enemydummy18 matches 1 if score @s enemydummy8 matches 2 if score @s enemydummy2 matches 90.. as @e[type=armor_stand,tag=body_segment] at @s run function alttp:lanmolas_mytick_coordinatedattack_1_2

# Coordinated attack 2 (Break the ceiling)
execute if score @s enemydummy matches 80 if score @s enemydummy8 matches 2 if score @s enemydummy18 matches 2 run function alttp:lanmolas_mytick_coordinatedattack_2_init
execute if score @s enemydummy matches 80.. if score @s enemydummy8 matches 2 if score @s enemydummy18 matches 2 as @e[type=armor_stand,tag=body_segment] run function alttp:lanmolas_mytick_coordinatedattack_2_1

# Coordinated attack 3 (Wave of sand)
execute if score @s enemydummy matches 80 if score @s enemydummy8 matches 2 if score @s enemydummy18 matches 3 run function alttp:lanmolas_mytick_coordinatedattack_3_init
execute if score @s enemydummy matches 80.. if score @s enemydummy8 matches 2 if score @s enemydummy18 matches 3 as @e[type=armor_stand,tag=body_segment] run function alttp:lanmolas_mytick_coordinatedattack_3

tag @e[type=armor_stand,tag=lanmolasbody1,tag=!body1] add otherbody
tag @e[type=armor_stand,tag=lanmolasbody2,tag=!body2] add otherbody
tag @e[type=armor_stand,tag=lanmolasbody3,tag=!body3] add otherbody
tag @e[type=armor_stand,tag=lanmolasbody4,tag=!body4] add otherbody
tag @e[type=armor_stand,tag=lanmolasbody5,tag=!body5] add otherbody
tag @e[type=armor_stand,tag=lanmolasbody6,tag=!body6] add otherbody
tag @e[type=armor_stand,tag=lanmolasbody7,tag=!body7] add otherbody
tag @e[type=armor_stand,tag=lanmolas,tag=!link_a] add otherbody

# Only head collision detection with other Lanmolas bodies
execute if score @s enemydummy8 matches 1 at @s if score @s enemydummy6 matches 0 if score @s enemydummy matches 80.. if entity @e[type=armor_stand,tag=otherbody,distance=..2] run tp @s ~ ~ ~ ~180 0
execute if score @s enemydummy8 matches 1 at @s if score @s enemydummy6 matches 0 if score @s enemydummy matches 80.. if entity @e[type=armor_stand,tag=otherbody,distance=..2] run summon marker ~ ~ ~ {Tags:["enemy","lmturn"]}
execute if score @s enemydummy8 matches 1 at @s if score @s enemydummy matches 80.. if entity @e[type=armor_stand,tag=otherbody,distance=..2] if score @s enemydummy6 matches 0 run function alttp:lanmolasshake
execute if score @s enemydummy8 matches 1 at @s if score @s enemydummy matches 80.. if entity @e[type=armor_stand,tag=otherbody,distance=..2] run scoreboard players set @s enemydummy6 1

tag @e remove otherbody

# Align slime hitbox
execute at @s run tp @e[type=slime,tag=hitbox] ~ ~-3.4 ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=slime,tag=hitbox] unless score @s enemydummy5 matches 0.. run scoreboard players set @s enemydummy5 0
data merge entity @e[type=slime,tag=hitbox,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 95..150 run data merge entity @e[type=slime,tag=hitbox,limit=1] {Invulnerable:0b}
execute if score @s enemydummy matches 95..150 as @e[type=slime,tag=hitbox] at @s unless block ^ ^ ^0.5 #gothrough run data merge entity @s {Invulnerable:1b}
execute store result score @s enemydummy10 run data get entity @e[type=slime,tag=hitbox,limit=1] Health

# When hit SFX and looks and direction change
execute if entity @e[type=slime,tag=hitbox,nbt={HurtTime:5s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 1.5 1.5 1.5 0.1 500 force
execute if entity @e[type=slime,tag=hitbox,nbt={HurtTime:5s}] run playsound minecraft:alttp.boss_hit weather @p ~ ~ ~
execute at @s if entity @e[type=slime,tag=hitbox,nbt={HurtTime:5s}] if score @s enemydummy8 matches 1 run function alttp:lanmolashitdirection

# Animate angry model in
execute if score @s enemydummy10 matches ..15 run scoreboard players add @s enemydummy9 1
execute if score @s enemydummy9 matches 5..40 run function alttp:lanmolas_t_angry

# Death animation
execute if score @s enemydummy5 matches 0.. run function alttp:lanmolas_t_death

# Per-segment damaging (for player feet)
execute as @e[type=armor_stand,tag=body_segment] at @s unless score @s enemydummy3 matches 1.. if entity @p[distance=..2.5] run scoreboard players set @p set_damage 3
execute if score @s enemydummy10 matches ..15 as @e[type=armor_stand,tag=body_segment] at @s unless score @s enemydummy3 matches 1.. if entity @p[distance=..2.5] run scoreboard players set @p set_damage 2
execute as @e[type=armor_stand,tag=body_segment] at @s unless score @s enemydummy3 matches 1.. if entity @p[distance=..2.5] run scoreboard players set @s enemydummy3 30
execute as @e[type=armor_stand,tag=body_segment] at @s if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

# Per-segment damaging (for player head)
execute as @e[type=armor_stand,tag=body_segment] at @s positioned ~ ~-1.5 ~ unless score @s enemydummy3 matches 1.. if entity @p[distance=..2.5] run scoreboard players set @p set_damage 3
execute if score @s enemydummy10 matches ..15 as @e[type=armor_stand,tag=body_segment] at @s positioned ~ ~-1.5 ~ unless score @s enemydummy3 matches 1.. if entity @p[distance=..2.5] run scoreboard players set @p set_damage 2
execute as @e[type=armor_stand,tag=body_segment] at @s positioned ~ ~-1.5 ~ unless score @s enemydummy3 matches 1.. if entity @p[distance=..2.5] run scoreboard players set @s enemydummy3 30
execute as @e[type=armor_stand,tag=body_segment] at @s positioned ~ ~-1.5 ~ if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

# Remove link tag for next enemy
execute if entity @e[type=slime,tag=hitbox] run tag @s add link_init
tag @e[type=armor_stand,tag=link_a] remove link_a
tag @e[type=armor_stand,tag=body1] remove body1
tag @e[type=armor_stand,tag=body2] remove body2
tag @e[type=armor_stand,tag=body3] remove body3
tag @e[type=armor_stand,tag=body4] remove body4
tag @e[type=armor_stand,tag=body5] remove body5
tag @e[type=armor_stand,tag=body6] remove body6
tag @e[type=armor_stand,tag=body7] remove body7
tag @e[type=armor_stand,tag=body_segment] remove body_segment
tag @e[type=slime,tag=hitbox] remove hitbox