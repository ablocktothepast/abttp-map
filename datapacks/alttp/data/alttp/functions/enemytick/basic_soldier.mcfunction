#FIND LINKED ENTITY
tag @s add link_a
execute if entity @s[tag=bluebowsoldier] as @e[type=skeleton,tag=bluebowsoldier_ai] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=greenbowsoldier] as @e[type=stray,tag=greenbowsoldier_ai] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=greensoldier] as @e[type=zombie,tag=greensoldier_ai] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=greenswordsoldier] as @e[type=zombie,tag=greenswordsoldier_ai] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=blueswordsoldier] as @e[type=husk,tag=blueswordsoldier_ai] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=bigblueswordsoldier] as @e[type=zombie_villager,tag=bigblueswordsoldier_ai] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=red_spear_soldier] as @e[type=zombie,tag=red_spear_soldierzo] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=green_spear_soldier] as @e[type=zombie,tag=green_spear_soldierzo] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute if entity @s[tag=big_spear_soldier] as @e[type=zombie,tag=big_spear_soldierzo] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b

#SPEED UP WHEN NEARBY (for spear soldiers)
execute if entity @s[tag=red_spear_soldier] if entity @p[distance=..10] run effect give @e[tag=link_b] speed 1 1 true
execute if entity @s[tag=green_spear_soldier] if entity @p[distance=..8] run effect give @e[tag=link_b] speed 1 1 true

#LINKY
tp @s @e[tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[tag=link_b] run tag @s add link_init
tag @e remove link_b
tag @s remove link_a