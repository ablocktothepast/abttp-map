scoreboard players set @s holding_bool 1
scoreboard players set @s holding_id 1
scoreboard players set @s holding_cool 10
setblock ^ ^ ^1 air
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run function alttp:potloot

#RESET PEGASUS COUNTER
scoreboard players set @p pegasussneak 0