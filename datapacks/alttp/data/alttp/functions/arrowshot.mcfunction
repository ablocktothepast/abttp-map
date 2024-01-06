execute if score @p arrows_selected matches 1 run scoreboard players remove @p arrows 1
execute if score @p arrows_selected matches 2 run scoreboard players remove @p arrows_silver 1
execute if score @p arrows_selected matches 3 run scoreboard players remove @p arrows_fire 1
execute if score @p arrows_selected matches 4 run scoreboard players remove @p arrows_ice 1
execute if score @p arrows_selected matches 5 run scoreboard players remove @p arrows_bomb 1

execute if score @p arrows_selected matches 3 run data merge entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:0b}] {Fire:500,Color:16735511,Tags:["arrow_fire"]}
execute if score @p arrows_selected matches 4 run data merge entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:0b}] {Color:2533631,Tags:["arrow_ice"]}
execute if score @p arrows_selected matches 5 run data merge entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:0b}] {Color:2059681,Tags:["arrow_bomb"]}

scoreboard players set @s shotarrow 0