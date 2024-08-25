summon marker ~ ~ ~ {Tags:["enemy","enemyCode","aksandwave"]}

execute if entity @s[tag=ak1] run tp @e[type=marker,tag=aksandwave,tag=!init] ~ ~ ~ 0 0
execute if entity @s[tag=ak2] run tp @e[type=marker,tag=aksandwave,tag=!init] ~ ~ ~ 60 0
execute if entity @s[tag=ak3] run tp @e[type=marker,tag=aksandwave,tag=!init] ~ ~ ~ 120 0
execute if entity @s[tag=ak4] run tp @e[type=marker,tag=aksandwave,tag=!init] ~ ~ ~ 180 0
execute if entity @s[tag=ak5] run tp @e[type=marker,tag=aksandwave,tag=!init] ~ ~ ~ -60 0
execute if entity @s[tag=ak6] run tp @e[type=marker,tag=aksandwave,tag=!init] ~ ~ ~ -120 0

scoreboard players set @e[type=marker,tag=enemyCode,limit=1,sort=nearest] eid 1

tag @e[type=marker,tag=aksandwave,tag=!init] add init