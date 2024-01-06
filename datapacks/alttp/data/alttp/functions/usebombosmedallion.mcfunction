scoreboard players remove @s magic 15
scoreboard players set @s bombostick 0
scoreboard players set @s spw_c_11 1

execute unless score . thirdperson matches 1 run summon marker ~ ~ ~ {Tags:["bombosfreeze"]}
execute unless score . thirdperson matches 1 run tp @e[type=marker,tag=bombosfreeze] ~ ~ ~ ~ ~