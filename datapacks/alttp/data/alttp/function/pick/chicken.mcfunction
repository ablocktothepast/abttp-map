scoreboard players set @s holding_bool 1
scoreboard players set @s holding_id 2
scoreboard players set @s holding_cool 10
tag @e[type=chicken,limit=1,sort=nearest] add heldchick
data merge entity @e[type=chicken,tag=heldchick,limit=1] {NoAI:1b}

#RESET PEGASUS COUNTER
scoreboard players set @p pegasussneak 0