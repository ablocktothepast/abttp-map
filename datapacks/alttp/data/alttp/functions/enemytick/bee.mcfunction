#BEE ALWAYS ANGRY
data merge entity @s {AngerTime:70,HasStung:0b}
data modify entity @s AngryAt set from entity @p UUID

scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 30.. run playsound alttp.bee weather @a[distance=..10] ~ ~ ~ 1 1
execute if score @s enemydummy matches 30.. run scoreboard players set @s enemydummy 0

execute if entity @s[nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force