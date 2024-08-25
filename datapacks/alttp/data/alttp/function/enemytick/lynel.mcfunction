#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=lynelzo] if score @s enemylink = @e[type=armor_stand,tag=lynel,limit=1,sort=nearest] enemylink run tag @s add link_b

execute unless score @s enemydummy3 matches -2147483648..2147483647 run scoreboard players set @s enemydummy4 40
execute unless score @s enemydummy3 matches -2147483648..2147483647 run scoreboard players set @s enemydummy3 40

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run kill @e[type=armor_stand,tag=lynelball]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#FIREBALL SHOOTING
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 40 run function alttp:lynel_shoot
execute if score @s enemydummy matches 70.. run scoreboard players set @s enemydummy 0

#SILVER ARROW DETECTION
execute unless score @s enemydummy2 matches 1.. at @s if entity @e[type=spectral_arrow,distance=..2] run scoreboard players remove @s enemydummy3 8
execute unless score @s enemydummy2 matches 1.. at @s if entity @e[type=spectral_arrow,distance=..2] run scoreboard players set @s enemydummy2 30
execute unless score @s enemydummy2 matches 1.. at @s positioned ~ ~0.7 ~ if entity @e[type=spectral_arrow,distance=..2] run scoreboard players remove @s enemydummy3 8
execute unless score @s enemydummy2 matches 1.. at @s positioned ~ ~0.7 ~ if entity @e[type=spectral_arrow,distance=..2] run scoreboard players set @s enemydummy2 30
execute unless score @s enemydummy2 matches 1.. at @s positioned ~ ~1.4 ~ if entity @e[type=spectral_arrow,distance=..2] run scoreboard players remove @s enemydummy3 8
execute unless score @s enemydummy2 matches 1.. at @s positioned ~ ~1.4 ~ if entity @e[type=spectral_arrow,distance=..2] run scoreboard players set @s enemydummy2 30

effect clear @e[type=zombie,tag=link_b] glowing

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#CUSTOM HEALTH SYSTEM
execute unless score @s enemydummy4 = @s enemydummy3 run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force
execute store result entity @e[type=zombie,tag=link_b,limit=1] Health float 1 run scoreboard players get @s enemydummy3
execute store result score @s enemydummy4 run scoreboard players get @s enemydummy3

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a