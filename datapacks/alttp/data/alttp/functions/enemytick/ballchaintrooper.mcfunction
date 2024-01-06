#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=ballchaintrooperzo] if score @s enemylink = @e[type=armor_stand,tag=ballchaintrooper,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
execute unless score @s enemydummy matches 2 run tp @s @e[type=zombie,tag=link_b,limit=1]
execute if score @s enemydummy matches 2 at @e[type=zombie,tag=link_b] run tp @s ~ ~ ~
execute if score @s enemydummy matches 2 at @s run tp @s ~ ~ ~ ~25 ~
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#enemydummy = state
#enemydummy2 = cooldown between swinging
#enemydummy3 = switching states
#enemydummy4 = swinging timer
#enemydummy5 = random swing timer
#enemydummy6 = damage cooldown
#States (1=idle,2=swinging)
execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 1

team join passive @p

execute if score @s enemydummy matches 1 run scoreboard players add @s enemydummy5 1
execute if score @s enemydummy matches 1 if score @s enemydummy5 matches 60.. store result score result rand run random value 1..5
execute if score @s enemydummy matches 1 if score @s enemydummy5 matches 60.. if score result rand matches 1 run scoreboard players set @s enemydummy3 2
execute if score @s enemydummy matches 1 if score @s enemydummy5 matches 60.. run scoreboard players set @s enemydummy5 0
execute if score @s enemydummy matches 1 if entity @p[distance=..10] run team join passive @e[type=zombie,tag=link_b]
execute if score @s enemydummy matches 1 unless entity @p[distance=..10] run team leave @e[type=zombie,tag=link_b]
execute if score @s enemydummy matches 1 run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:0b}
execute if score @s enemydummy matches 1 if entity @p[distance=..5] unless score @s enemydummy2 matches 1.. run scoreboard players set @s enemydummy3 2

execute if score @s enemydummy matches 2 run team leave @s
execute if score @s enemydummy matches 2 run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 2 run scoreboard players add @s enemydummy4 1
execute if score @s enemydummy matches 2 unless score @s enemydummy6 matches 1.. run damage @p[distance=..1.5] 2
execute if score @s enemydummy matches 2 unless score @s enemydummy6 matches 1.. if entity @p[distance=..1.5] run summon marker ~ ~ ~ {Tags:["knocky"]}
execute if score @s enemydummy matches 2 unless score @s enemydummy6 matches 1.. if entity @p[distance=..1.5] run scoreboard players set @s enemydummy6 15
execute if score @s enemydummy matches 2 if score @s enemydummy4 matches 70.. unless entity @p[distance=..4] run scoreboard players set @s enemydummy3 1

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1
execute if score @s enemydummy6 matches 1.. run scoreboard players remove @s enemydummy6 1

#State switching
execute if score @s enemydummy3 matches 1 run scoreboard players set @s enemydummy 1
execute if score @s enemydummy3 matches 1 run scoreboard players set @s enemydummy2 30
execute if score @s enemydummy3 matches 1 run scoreboard players set @s enemydummy5 0
execute if score @s enemydummy3 matches 1 run scoreboard players set @s enemydummy3 0

execute if score @s enemydummy3 matches 2 run scoreboard players set @s enemydummy 2
execute if score @s enemydummy3 matches 2 run scoreboard players set @s enemydummy4 0
execute if score @s enemydummy3 matches 2 run scoreboard players set @s enemydummy3 0

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e remove link_b
tag @e remove link_a