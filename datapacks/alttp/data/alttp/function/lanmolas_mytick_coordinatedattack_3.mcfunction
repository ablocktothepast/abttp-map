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
execute if score @s enemydummy2 matches 63.. at @s unless block ~ ~-0.1 ~ #gothrough if block ~ ~0.1 ~ #gothrough if entity @s[tag=body7] run scoreboard players set @e[type=armor_stand,tag=link_a] enemydummy 20

#Sand wave creation
execute if entity @s[tag=coordinator] if score @s enemydummy2 matches 55 run function alttp:summon/sand_wave