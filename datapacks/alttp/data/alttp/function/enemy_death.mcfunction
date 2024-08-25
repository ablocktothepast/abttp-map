execute store result score result rand run random value 1..2
execute if score result rand matches 1 run function alttp:enemy_loot
execute if entity @s[tag=chain_chomp] at @e[type=marker,tag=chain_chomp_pole] run setblock ~ ~ ~ air
execute if entity @s[tag=chain_chomp] run kill @e[type=marker,tag=chain_chomp_pole]
function alttp:enemy_kill_stats

kill @s
execute unless entity @s[tag=flying_tile] run playsound minecraft:entity.zombie.death weather @a ~ ~ ~ 1 1
execute unless entity @s[tag=flying_tile] run particle soul ~ ~ ~ 0.5 0.5 0.5 0 100 force