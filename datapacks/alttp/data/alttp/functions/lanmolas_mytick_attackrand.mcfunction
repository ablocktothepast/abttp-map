# Timer > 0, jump!
# Encountering a wall? Rotate or something idk
execute if score @s enemydummy2 matches 6..47 unless block ^ ^ ^0.4 #gothrough if entity @s[tag=link_a,tag=!wallhit] run function alttp:lanmolasshake
execute if score @s enemydummy2 matches 6..47 unless block ^ ^ ^0.4 #gothrough run tp @s ~ ~ ~ ~90 ~

# See a lmturn? Rotate or something idk
execute if entity @s[tag=!link_a] if entity @e[type=marker,tag=lmturn,distance=..0.1] run tp @s ~ ~ ~ ~180 0
execute if entity @s[tag=!link_a] if entity @s[tag=body7] if entity @e[type=marker,tag=lmturn,distance=..0.1] run kill @e[type=marker,tag=lmturn,limit=1,sort=nearest]

# See a lmhit? Rotate as it or something idk
execute if entity @s[tag=!link_a] if entity @e[type=marker,tag=lmhit,distance=..0.1,tag=-1] run tp @s ~ ~ ~ ~-20 0
execute if entity @s[tag=!link_a] if entity @e[type=marker,tag=lmhit,distance=..0.1,tag=1] run tp @s ~ ~ ~ ~20 0
execute if entity @s[tag=!link_a] if entity @s[tag=body7] if entity @e[type=marker,tag=lmhit,distance=..0.1] run kill @e[type=marker,tag=lmhit,limit=1,sort=nearest]

# Timer is between 0 and 40 = Go up & forward
execute if score @s enemydummy2 matches -9..62 at @s rotated ~ 0 if block ^ ^ ^0.4 #gothrough run tp @s ^ ^ ^0.4 ~ 0

execute if score @s enemydummy2 matches -9..5 at @s run tp @s ~ ~0.4 ~ ~ ~
execute if score @s enemydummy2 matches 6..10 at @s if block ~ ~0.35 ~ #gothrough run tp @s ~ ~0.25 ~ ~ ~
execute if score @s enemydummy2 matches 11..14 at @s if block ~ ~0.3 ~ #gothrough run tp @s ~ ~0.2 ~ ~ ~
execute if score @s enemydummy2 matches 15..18 at @s if block ~ ~0.25 ~ #gothrough run tp @s ~ ~0.15 ~ ~ ~
execute if score @s enemydummy2 matches 19..22 at @s if block ~ ~0.2 ~ #gothrough run tp @s ~ ~0.1 ~ ~ ~
execute if score @s enemydummy2 matches 23..26 at @s if block ~ ~0.04 ~ #gothrough run tp @s ~ ~0.02 ~ ~ ~

# Timer is between 131 and 180 = Go down & forward
execute if score @s enemydummy2 matches 27..30 at @s if block ~ ~-0.04 ~ #gothrough run tp @s ~ ~-0.04 ~ ~ ~
execute if score @s enemydummy2 matches 31..34 at @s if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~ ~ ~
execute if score @s enemydummy2 matches 35..38 at @s if block ~ ~-0.25 ~ #gothrough run tp @s ~ ~-0.25 ~ ~ ~
execute if score @s enemydummy2 matches 39..42 at @s if block ~ ~-0.3 ~ #gothrough run tp @s ~ ~-0.3 ~ ~ ~
execute if score @s enemydummy2 matches 43..47 at @s if block ~ ~-0.35 ~ #gothrough run tp @s ~ ~-0.35 ~ ~ ~
execute if score @s enemydummy2 matches 48..62 at @s run tp @s ~ ~-0.4 ~ ~ ~

# After 180, turn everything off and stabilize
execute if score @s enemydummy2 matches 63 run tag @s remove visible
execute if score @s enemydummy2 matches 63.. at @s if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute if score @s enemydummy2 matches 63.. at @s unless block ~ ~0.1 ~ #gothrough run tp @s ~ ~0.1 ~
execute if score @s enemydummy2 matches 63.. at @s unless block ~ ~-0.1 ~ #gothrough if block ~ ~0.1 ~ #gothrough if entity @s[tag=body7] run scoreboard players set @e[type=armor_stand,tag=link_a] enemydummy 30

# Sand particles
execute if score @s enemydummy2 matches 53..70 at @s run particle block sand ~ ~ ~ 1 0.2 1 0.2 15 force
execute if score @s enemydummy2 matches 53..70 at @s run playsound block.sand.break weather @p ~ ~ ~ 0.15

# Slime particles
execute if score @s enemydummy2 matches 6..53 at @s run particle block slime_block ~ ~-3 ~ 1.5 0.2 1.5 0.2 5 force