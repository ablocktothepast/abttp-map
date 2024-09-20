execute if score @p arrows_selected matches 1 run scoreboard players remove @p arrows 1
execute if score @p arrows_selected matches 2 run scoreboard players remove @p arrows_silver 1
execute if score @p arrows_selected matches 3 run scoreboard players remove @p arrows_bomb 1

execute if score @p arrows_selected matches 3 run data merge entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:0b}] {Color:2059681,Tags:["arrow_bomb"]}

#Put arrow item back if more left
execute as @p at @s run function alttp:pin/arrows

scoreboard players set @s shotarrow 0