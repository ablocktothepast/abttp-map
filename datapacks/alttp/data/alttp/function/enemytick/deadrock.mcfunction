#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=deadrockzo] if score @s enemylink = @e[type=item_display,tag=deadrock,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute at @s run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#DETECT HITS TO STONE UP
execute unless score @s dummy matches -2147483648..2147483647 run scoreboard players set @s dummy 0
execute if entity @s[tag=link_init] store result score @s enemydummy2 run data get entity @e[type=zombie,tag=link_b,limit=1] Health
execute if entity @s[tag=link_init] unless score @s enemydummy = @s enemydummy2 run playsound alttp.break weather @p ~ ~ ~ 1 1
execute if entity @s[tag=link_init] unless score @s enemydummy = @s enemydummy2 run scoreboard players set @s dummy 1

execute if score @s dummy matches 1 store result score @s enemydummy run scoreboard players get @s enemydummy2
execute if score @s dummy matches 1 unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy3 1
execute if score @s dummy matches 1 run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:1b,NoAI:1b}
execute if score @s dummy matches 1 run team join passive @e[type=zombie,tag=link_b]
execute if score @s dummy matches 1 if score @s enemydummy3 matches 100.. run tag @s add unstone

execute if entity @s[tag=unstone] run scoreboard players set @s enemydummy3 0
execute if entity @s[tag=unstone] run scoreboard players set @s dummy 0
execute if entity @s[tag=unstone] run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:0b,NoAI:0b}
execute if entity @s[tag=unstone] run team leave @e[type=zombie,tag=link_b]
execute if entity @s[tag=unstone] run playsound alttp.break weather @p ~ ~ ~ 1 1
execute if entity @s[tag=unstone] run tag @s remove unstone

#POWDERED
execute if entity @s[tag=powdered] run kill @e[type=zombie,tag=link_b]
execute if entity @s[tag=powdered] run function alttp:summon/slime
execute if entity @s[tag=powdered] run kill @s

#MODELBOYS
scoreboard players add @s enemydummy5 1
execute if score @s enemydummy5 matches 7.. run scoreboard players set @s enemydummy5 1

execute if score @s dummy matches 0 if score @s enemydummy5 matches 1..3 run data merge entity @s {item:{components:{"minecraft:custom_model_data":118},count:1,id:"minecraft:carrot_on_a_stick"}}
execute if score @s dummy matches 0 if score @s enemydummy5 matches 4..6 run data merge entity @s {item:{components:{"minecraft:custom_model_data":119},count:1,id:"minecraft:carrot_on_a_stick"}}

execute store result score @s enemydummy6 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[0] 100
execute store result score @s enemydummy7 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[2] 100
scoreboard players operation @s enemydummy6 += @s enemydummy7
execute if score @s dummy matches 0 if score @s enemydummy6 matches 0 run data merge entity @s {item:{components:{"minecraft:custom_model_data":117},count:1,id:"minecraft:carrot_on_a_stick"}}

execute if score @s dummy matches 1 run data merge entity @s {item:{components:{"minecraft:custom_model_data":120},count:1,id:"minecraft:carrot_on_a_stick"}}

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a