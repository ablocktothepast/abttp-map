# Timer is between 0 and 40 = Go up & forward
execute if score @s enemydummy2 matches -9..90 at @s rotated ~ 0 if block ^ ^ ^0.4 #gothrough run tp @s ^ ^ ^0.4 ~ 0

execute if score @s enemydummy2 matches -9..5 at @s run tp @s ~ ~0.4 ~ ~ ~
execute if score @s enemydummy2 matches 6..10 at @s if block ~ ~0.35 ~ #gothrough run tp @s ~ ~0.35 ~ ~ ~
execute if score @s enemydummy2 matches 11..14 at @s if block ~ ~0.3 ~ #gothrough run tp @s ~ ~0.3 ~ ~ ~
execute if score @s enemydummy2 matches 15..18 at @s if block ~ ~0.25 ~ #gothrough run tp @s ~ ~0.25 ~ ~ ~
execute if score @s enemydummy2 matches 19..23 at @s if block ~ ~0.2 ~ #gothrough run tp @s ~ ~0.2 ~ ~ ~

execute if score @s enemydummy2 matches 24..28 at @s if block ~ ~0.35 ~ #gothrough run tp @s ~ ~0.35 ~ ~ ~
execute if score @s enemydummy2 matches 29..32 at @s if block ~ ~0.3 ~ #gothrough run tp @s ~ ~0.3 ~ ~ ~
execute if score @s enemydummy2 matches 33..36 at @s if block ~ ~0.25 ~ #gothrough run tp @s ~ ~0.25 ~ ~ ~
execute if score @s enemydummy2 matches 37..41 at @s if block ~ ~0.2 ~ #gothrough run tp @s ~ ~0.2 ~ ~ ~
execute if score @s enemydummy2 matches 42..45 at @s if block ~ ~0.04 ~ #gothrough run tp @s ~ ~0.04 ~ ~ ~


# Timer is between 131 and 180 = Go down & forward
execute if score @s enemydummy2 matches 46..49 at @s if block ~ ~-0.04 ~ #gothrough run tp @s ~ ~-0.04 ~ ~ ~
execute if score @s enemydummy2 matches 50..53 at @s if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~ ~ ~
execute if score @s enemydummy2 matches 54..57 at @s if block ~ ~-0.25 ~ #gothrough run tp @s ~ ~-0.25 ~ ~ ~
execute if score @s enemydummy2 matches 58..61 at @s if block ~ ~-0.3 ~ #gothrough run tp @s ~ ~-0.3 ~ ~ ~
execute if score @s enemydummy2 matches 62..66 at @s if block ~ ~-0.35 ~ #gothrough run tp @s ~ ~-0.35 ~ ~ ~
execute if score @s enemydummy2 matches 67..74 at @s run tp @s ~ ~-0.4 ~ ~ ~
execute if score @s enemydummy2 matches 75..90 at @s run tp @s ~ ~-0.5 ~ ~ ~

# After 180, turn everything off and stabilize
execute if score @s enemydummy2 matches 91 run tag @s remove visible
execute if score @s enemydummy2 matches 91.. at @s if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute if score @s enemydummy2 matches 91.. at @s unless block ~ ~0.1 ~ #gothrough run tp @s ~ ~0.1 ~
execute if score @s enemydummy2 matches 91.. at @s unless block ~ ~-0.1 ~ #gothrough if block ~ ~0.1 ~ #gothrough if entity @s[tag=body7] run scoreboard players set @e[type=armor_stand,tag=link_a] enemydummy 20

# Turn at the touchy bit
execute at @s if score @s enemydummy2 matches 23 run tp @s ~ ~ ~ ~180 0
execute at @s if entity @s[tag=coordinator] if score @s enemydummy2 matches 23 run function alttp:lanmolas_ceilingrocks