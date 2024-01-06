#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=geldmanzo] if score @s enemylink = @e[type=armor_stand,tag=geldman,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINK 'EM
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#IN AND OUT OF SAND WITH TIMER
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 0 run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:1b}
execute if score @s enemydummy matches 1 run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b}

execute if score @s enemydummy matches 0 unless score @s dummy matches 1.. if entity @p[distance=..3] run tag @s add attacc

execute if entity @s[tag=attacc] run scoreboard players set @s enemydummy 1
execute if entity @s[tag=attacc] run scoreboard players set @s dummy 200
execute if entity @s[tag=attacc] run playsound block.sand.break weather @p ~ ~ ~ 1 1
execute if entity @s[tag=attacc] run tag @s remove attacc

execute if score @s enemydummy matches 1 if score @s dummy matches 1.. run scoreboard players remove @s dummy 1
execute if score @s enemydummy matches 1 if score @s dummy matches 0 run tag @s add hide

execute if entity @s[tag=hide] run scoreboard players set @s enemydummy 0
execute if entity @s[tag=hide] run scoreboard players set @s dummy 120
execute if entity @s[tag=hide] run playsound block.sand.break weather @p ~ ~ ~ 1 1
execute if entity @s[tag=hide] run tag @s remove hide

execute if score @s enemydummy matches 0 if score @s dummy matches 1.. run scoreboard players remove @s dummy 1

#ACTUALLY HIDING "IN" SAND

execute if score @s enemydummy matches 1 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}]}
execute if score @s enemydummy matches 1 run team empty Geldman
execute if score @s enemydummy matches 0 run data remove entity @s HandItems[0]
execute if score @s enemydummy matches 0 run team join Geldman @p
execute if score @s enemydummy matches 0 run team join Geldman @e[type=zombie,tag=link_b]
execute if score @s enemydummy matches 0 run team modify Geldman collisionRule never
execute if score @s enemydummy matches 0 run team modify Geldman seeFriendlyInvisibles false

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a