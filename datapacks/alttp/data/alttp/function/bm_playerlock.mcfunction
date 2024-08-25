kill @e[type=area_effect_cloud,tag=bm]
kill @e[type=minecart,tag=bm]

execute at @p run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:0,Tags:["bm","aec"],Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["bm","minecart"]}]}
execute at @p run tp @e[type=area_effect_cloud,tag=bm,tag=aec] ~ ~ ~ ~ 0
gamemode adventure @p
ride @p mount @e[type=minecart,tag=bm,tag=minecart,limit=1]