#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=ocelot,tag=popooc] if score @s enemylink = @e[type=armor_stand,tag=popo,limit=1,sort=nearest] enemylink run tag @s add link_b

#"AI" THING
tp @s @e[type=ocelot,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=ocelot,tag=link_b] run function alttp:enemy_death

#DAMAGE
execute unless score @s enemydummy matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 2
execute unless score @s enemydummy matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy 30

execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1

#DAMAGE INDICATOR
execute if entity @e[type=ocelot,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=ocelot,tag=link_b] run tag @s add link_init
tag @e[type=ocelot] remove link_b
tag @s remove link_a