execute store result score result rand run random value 1..200

#BEE
execute if score result rand matches 1..2 run function alttp:summon/bee
#HALF HEART
execute if score result rand matches 5..29 run function alttp:loot/halfheart
#GREEN RUPEE
execute if score result rand matches 33..47 run function alttp:loot/greenrupee
#BLUE RUPEE
execute if score result rand matches 48..62 run function alttp:loot/bluerupee
#SMALL MAGIC
execute if score result rand matches 63..72 run function alttp:loot/smallmagic
#BIG MAGIC
execute if score result rand matches 73..75 run function alttp:loot/bigmagic
#FAIRY
execute if score result rand matches 76 run function alttp:summon/greensoldier
#SOLDIER
execute if score result rand matches 77 positioned ~ ~0.8 ~ run function alttp:summon/fairy

kill @s

scoreboard players set @p bushminecool 10