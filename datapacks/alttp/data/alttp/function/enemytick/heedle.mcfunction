#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=heedlesf] if score @s enemylink = @e[type=armor_stand,tag=heedle,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#STATES
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 1 run scoreboard players set @s enemydummy3 0
execute if score @s enemydummy matches 1 run attribute @e[type=silverfish,tag=link_b,limit=1] generic.movement_speed base set 0.22
execute if score @s enemydummy matches 1 run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 10 run summon marker ~ ~ ~ {Tags:["heedlefire","nolifesteal"]}
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 10.. run scoreboard players set @s enemydummy2 0

execute if entity @s[tag=icerodfrozen] run scoreboard players set @s enemydummy 0
execute if entity @s[tag=icerodfrozen] run effect clear @s
execute if entity @s[tag=icerodfrozen] run scoreboard players set @s frozentimer -1
execute if entity @s[tag=icerodfrozen] run playsound block.lava.extinguish weather @p ~ ~ ~ 100000
execute if entity @s[tag=icerodfrozen] run tag @s remove icerodfrozen

execute as @e[type=silverfish,tag=link_b] if entity @s[tag=icerodfrozen] run scoreboard players set @s enemydummy 0
execute as @e[type=silverfish,tag=link_b] if entity @s[tag=icerodfrozen] run effect clear @s
execute as @e[type=silverfish,tag=link_b] if entity @s[tag=icerodfrozen] run scoreboard players set @s frozentimer -1
execute as @e[type=silverfish,tag=link_b] if entity @s[tag=icerodfrozen] run tag @s remove icerodfrozen

execute if score @s enemydummy matches 0 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}
execute if score @s enemydummy matches 0 run attribute @e[type=silverfish,tag=link_b,limit=1] generic.movement_speed base set 0.32
execute if score @s enemydummy matches 0 run attribute @e[type=silverfish,tag=link_b,limit=1] generic.follow_range base set 10
execute if score @s enemydummy matches 0 run attribute @e[type=silverfish,tag=link_b,limit=1] generic.attack_damage base set 6
execute if score @s enemydummy matches 0 run scoreboard players add @s enemydummy3 1
execute if score @s enemydummy matches 0 if score @s enemydummy3 matches 100.. run playsound item.flintandsteel.use weather @p ~ ~ ~ 100000
execute if score @s enemydummy matches 0 if score @s enemydummy3 matches 100.. run scoreboard players set @s enemydummy 1

data merge entity @e[type=silverfish,tag=link_b,limit=1] {Fire:-20s}

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a