execute if entity @s[nbt={data:{id:3}}] if score oakheart_secret keys matches 1 run tag @s remove locked
execute if entity @s[nbt={data:{id:3}}] if score oakheart_secret keys matches 1 run tag @s add lock_opened
execute if entity @s[nbt={data:{id:3}}] if score oakheart_secret keys matches 1 run playsound minecraft:alttp.door_open weather @p ~ ~ ~ 1 1
execute if entity @s[nbt={data:{id:3}}] if score oakheart_secret keys matches 1 run scoreboard players set oakheart_secret keys 0