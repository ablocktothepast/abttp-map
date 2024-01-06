#CALCULATE DAMAGE REMOVAL FOR ARMOR TIER
execute store result score armorcalc dummy run scoreboard players get @s set_damage

scoreboard players set 100 dummy 100
scoreboard players set 8 dummy 8
scoreboard players set 7 dummy 7
scoreboard players set 3 dummy 3
scoreboard players set 2 dummy 2

scoreboard players operation armorcalc dummy *= 100 dummy
execute if score @s armortier matches 2 run scoreboard players operation armorcalc dummy /= 8 dummy
execute if score @s armortier matches 2 run scoreboard players operation armorcalc dummy *= 7 dummy

execute if score @s armortier matches 3 run scoreboard players operation armorcalc dummy /= 3 dummy
execute if score @s armortier matches 3 run scoreboard players operation armorcalc dummy *= 2 dummy

execute if score @s set_damage_source matches 1 if score @p shieldtier matches 2.. run scoreboard players operation armorcalc dummy /= 2 dummy
execute if score @s set_damage_source matches 2 if score @p shieldtier matches 3.. run scoreboard players operation armorcalc dummy /= 2 dummy

execute if score @s set_damage_source matches 1 if score @p shieldtier matches 2.. if score shieldblock dummy matches 1.. run scoreboard players set armorcalc dummy 0
execute if score @s set_damage_source matches 2 if score @p shieldtier matches 3.. if score shieldblock dummy matches 1.. run scoreboard players set armorcalc dummy 0

scoreboard players set @s set_damage_source 0

execute if score . thirdperson matches 1 if score tpcool dummy matches 1.. run scoreboard players set armorcalc dummy 0

# tellraw @p {"score":{"name":"armorcalc","objective":"dummy"}}

scoreboard players operation armorcalc dummy /= 100 dummy
execute if score @s set_damage matches 1.. store result score @s set_damage run scoreboard players get armorcalc dummy

execute store result storage test damage int 1 run scoreboard players get @s set_damage
function alttp:set_damage_macro with storage test

execute if score @s set_damage matches -2..-1 run effect give @s minecraft:regeneration 1 3 true
execute if score @s set_damage matches -5..-3 run effect give @s minecraft:regeneration 1 4 true
execute if score @s set_damage matches ..-6 run effect give @s minecraft:regeneration 1 5 true

scoreboard players set @s set_damage 0