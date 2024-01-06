#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=goriyazo] if score @s enemylink = @e[type=armor_stand,tag=goriya,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=zombie,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#COPY MOTION DATA AND HOPE THAT LOOKS GOOD
data modify entity @s Motion set from entity @p Motion

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a