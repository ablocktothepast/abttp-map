execute at @p rotated ~ 0 positioned ^ ^2.1 ^0.1 run summon arrow ~ ~ ~ {Tags:["knockbackarrow"],Silent:1b}
execute as @e[type=arrow,tag=knockbackarrow] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~