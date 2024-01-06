execute if score @s enemydummy14 matches 1 positioned 6967.0 68.0 6955.0 rotated 0 0 positioned ^ ^ ^12 run tp @s ~ ~ ~ 180 0
execute if score @s enemydummy14 matches 2 if score @s enemydummy16 matches 2 positioned 6967.0 68.0 6955.0 rotated 180 0 positioned ^ ^ ^12 run tp @s ~ ~ ~ 0 0
execute if score @s enemydummy14 matches 2 if score @s enemydummy16 matches 3 positioned 6967.0 68.0 6955.0 rotated 120 0 positioned ^ ^ ^12 run tp @s ~ ~ ~ -60 0
execute if score @s enemydummy14 matches 3 positioned 6967.0 68.0 6955.0 rotated 240 0 positioned ^ ^ ^12 run tp @s ~ ~ ~ 60 0

execute at @s run tp @e[type=armor_stand,tag=body_segment] @s