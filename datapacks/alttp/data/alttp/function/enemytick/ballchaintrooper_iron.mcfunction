#STATES (1=idle, 2=swinging)
execute if score @s bct_spincool matches -1 if entity @p[distance=..5] run scoreboard players set @s bct_state 2

#SPIN COOLDOWN
execute if score @s bct_state matches 2 run scoreboard players add @s bct_spincool 1
execute if score @s bct_state matches 2 if score @s bct_spincool matches 70 run scoreboard players set @s bct_spincool -60
execute if score @s bct_spincool matches ..-2 run scoreboard players set @s bct_state 1
execute if score @s bct_spincool matches ..-2 run scoreboard players add @s bct_spincool 1

#CORRECT ITEM
execute if score @s bct_state matches 1 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 25}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s bct_state matches 2 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 24}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#STUNNING
execute if score @s bct_stun matches 1.. run scoreboard players remove @s bct_stun 1
execute if score @s bct_stun matches 1.. run scoreboard players set @s bct_state 1
execute if score @s bct_stun matches 1.. run scoreboard players set @s bct_spincool -5

#SPEEN
scoreboard players add @s bct_spin 25
execute if score @s bct_spin matches 180 run scoreboard players set @s bct_spin -180
execute if score @s bct_state matches 2 run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s bct_spin
scoreboard players add @s enemydummy2 1
execute if score @s enemydummy2 matches 10.. run scoreboard players set @s enemydummy2 0

execute if score @s bct_state matches 2 if score @s enemydummy2 matches 5 run playsound alttp.tink weather @p ~ ~ ~ 1 0.5

#DAMAGE (idle=touch, swing=ball touch)
execute unless score @s bct_cool matches 1.. if score @s bct_state matches 1 if entity @p[distance=..0.5] run scoreboard players set @p set_damage 2
execute unless score @s bct_cool matches 1.. if score @s bct_state matches 1 if entity @p[distance=..0.5] run scoreboard players set @s bct_cool 30

execute unless score @s bct_cool matches 1.. if score @s bct_state matches 2 if entity @p[distance=..3] run scoreboard players set @p set_damage 3
execute unless score @s bct_cool matches 1.. if score @s bct_state matches 2 if entity @p[distance=..3] run scoreboard players set @s bct_cool 30

execute if score @s bct_cool matches 1.. run scoreboard players remove @s bct_cool 1

data merge entity @s {ArmorItems: [{}, {count: 1, id: "minecraft:iron_leggings"}, {count: 1, id: "minecraft:iron_chestplate"}, {count: 1, id: "minecraft:iron_helmet"}]}