#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=bombitesf] if score @s enemylink = @e[type=armor_stand,tag=bombite,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#WHEN HIT, START FUSING
execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 0
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] unless score @s enemydummy matches 1 run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1.. run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 1.. run particle smoke ~ ~ ~ 0.2 0.3 0.2 0.05 5 force
execute if score @s enemydummy matches 1.. run effect give @e[type=silverfish,tag=link_b] speed 1 1 true
execute if score @s enemydummy matches 75.. run particle flame ~ ~ ~ 0.2 0.3 0.2 0.05 5 force
execute if score @s enemydummy matches 100.. run summon creeper ~ ~1.5 ~ {Fuse:0,ignited:1b,Attributes:[{Name:generic.attack_damage,Base:1}]}
execute if score @s enemydummy matches 100.. run function delta:api/explosion_emitter_particle
execute if score @s enemydummy matches 100.. run kill @e[type=silverfish,tag=link_b]
execute if score @s enemydummy matches 100.. run kill @s

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a