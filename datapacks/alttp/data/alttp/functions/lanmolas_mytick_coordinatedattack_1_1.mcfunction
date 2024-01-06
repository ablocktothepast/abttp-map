execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches ..50 if block ~ ~ ~ sandstone run particle block sandstone ~ ~1 ~ 2 3 2 0.4 200 force

execute at @s if score @s enemydummy13 matches 51..90 run particle block sand ~ ~ ~ 3 3 3 5 50 force

execute at @s if entity @s[tag=link_a,tag=coordinator] if score @s enemydummy2 matches 10 positioned 6967.0 69.0 6955.0 run function alttp:summon/lanmolas_tornado

# After 150, turn everything off and stabilize
execute if score @s enemydummy2 matches 151 run tag @s remove visible
execute if score @s enemydummy2 matches 151.. at @s if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~
execute if score @s enemydummy2 matches 151.. at @s unless block ~ ~0.2 ~ #gothrough run tp @s ~ ~0.2 ~
execute if score @s enemydummy2 matches 151.. at @s unless block ~ ~-0.2 ~ #gothrough if block ~ ~0.2 ~ #gothrough if entity @s[tag=body7] run scoreboard players set @e[type=armor_stand,tag=link_a] enemydummy 20