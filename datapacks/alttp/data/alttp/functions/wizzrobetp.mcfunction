execute store result score result rand run random value 1..8

execute if score result rand matches 1 unless block ~ ~ ~3 #gothrough store result score result rand run random value 1..8
execute if score result rand matches 2 unless block ~ ~ ~-6 #gothrough store result score result rand run random value 1..8
execute if score result rand matches 3 unless block ~5 ~ ~3 #gothrough store result score result rand run random value 1..8
execute if score result rand matches 4 unless block ~-3 ~ ~3 #gothrough store result score result rand run random value 1..8
execute if score result rand matches 5 unless block ~4 ~ ~-3 #gothrough store result score result rand run random value 1..8
execute if score result rand matches 6 unless block ~-2 ~ ~-3 #gothrough store result score result rand run random value 1..8
execute if score result rand matches 7 unless block ~3 ~ ~ #gothrough store result score result rand run random value 1..8
execute if score result rand matches 8 unless block ~-7 ~ ~ #gothrough store result score result rand run random value 1..8

execute if score result rand matches 1 if block ~ ~ ~3 #gothrough run tp @s ~ ~ ~3
execute if score result rand matches 2 if block ~ ~ ~-6 #gothrough run tp @s ~ ~ ~-3
execute if score result rand matches 3 if block ~5 ~ ~3 #gothrough run tp @s ~3 ~ ~3
execute if score result rand matches 4 if block ~-3 ~ ~3 #gothrough run tp @s ~-3 ~ ~3
execute if score result rand matches 5 if block ~4 ~ ~-3 #gothrough run tp @s ~3 ~ ~-3
execute if score result rand matches 6 if block ~-2 ~ ~-3 #gothrough run tp @s ~-3 ~ ~-3
execute if score result rand matches 7 if block ~3 ~ ~ #gothrough run tp @s ~3 ~ ~
execute if score result rand matches 8 if block ~-7 ~ ~ #gothrough run tp @s ~-3 ~ ~

playsound alttp.teleport weather @p ~ ~ ~ 1 1