scoreboard players set @s holding_bool 1
scoreboard players set @s holding_id 4
scoreboard players set @s holding_cool 10
setblock ^ ^ ^1 air

#Chance for Stal
execute store result score result rand run random value 1..10
execute if score result rand matches 1 positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run function alttp:summon/stal
execute if score result rand matches 1 run scoreboard players set @s holding_bool 0

#RESET PEGASUS COUNTER
scoreboard players set @p pegasussneak 0