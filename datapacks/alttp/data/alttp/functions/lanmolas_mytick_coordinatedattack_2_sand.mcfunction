# Particle
execute if score @s enemydummy14 matches 1 positioned 6967.0 68.0 6955.0 rotated 0 0 positioned ^ ^ ^12 run particle block sand ~ ~0.7 ~ 1 0.2 1 0.2 30 force
execute if score @s enemydummy14 matches 2 if score @s enemydummy16 matches 2 positioned 6967.0 68.0 6955.0 rotated 180 0 positioned ^ ^ ^12 run particle block sand ~ ~0.7 ~ 1 0.2 1 0.2 30 force
execute if score @s enemydummy14 matches 2 if score @s enemydummy16 matches 3 positioned 6967.0 68.0 6955.0 rotated 120 0 positioned ^ ^ ^12 run particle block sand ~ ~0.7 ~ 1 0.2 1 0.2 30 force
execute if score @s enemydummy14 matches 3 positioned 6967.0 68.0 6955.0 rotated 240 0 positioned ^ ^ ^12 run particle block sand ~ ~0.7 ~ 1 0.2 1 0.2 30 force

# Sound
execute if score @s enemydummy14 matches 1 positioned 6967.0 68.0 6955.0 rotated 0 0 positioned ^ ^ ^12 run playsound block.sand.break weather @p ~ ~ ~ 0.3
execute if score @s enemydummy14 matches 2 if score @s enemydummy16 matches 2 positioned 6967.0 68.0 6955.0 rotated 180 0 positioned ^ ^ ^12 run playsound block.sand.break weather @p ~ ~ ~ 0.3
execute if score @s enemydummy14 matches 2 if score @s enemydummy16 matches 3 positioned 6967.0 68.0 6955.0 rotated 120 0 positioned ^ ^ ^12 run playsound block.sand.break weather @p ~ ~ ~ 0.3
execute if score @s enemydummy14 matches 3 positioned 6967.0 68.0 6955.0 rotated 240 0 positioned ^ ^ ^12 run playsound block.sand.break weather @p ~ ~ ~ 0.3