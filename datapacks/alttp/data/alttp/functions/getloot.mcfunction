#HALF HEART
execute if entity @e[type=item,tag=loot,tag=halfheart,distance=..0.5] run effect give @s regeneration 1 1 true
execute if entity @e[type=item,tag=loot,tag=halfheart,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#SMALL MAGIC
execute if entity @e[type=item,tag=loot,tag=smallmagic,distance=..0.5] run scoreboard players add @s magic 6
execute if entity @e[type=item,tag=loot,tag=smallmagic,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#BIG MAGIC
execute if entity @e[type=item,tag=loot,tag=bigmagic,distance=..0.5] run scoreboard players add @s magic 18
execute if entity @e[type=item,tag=loot,tag=bigmagic,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#GREEN RUPEE
execute if entity @e[type=item,tag=loot,tag=greenrupee,distance=..0.5] run scoreboard players add @s rupees 1
execute if entity @e[type=item,tag=loot,tag=greenrupee,distance=..0.5] run playsound minecraft:alttp.rupee weather @s
#BLUE RUPEE
execute if entity @e[type=item,tag=loot,tag=bluerupee,distance=..0.5] run scoreboard players add @s rupees 5
execute if entity @e[type=item,tag=loot,tag=bluerupee,distance=..0.5] run playsound minecraft:alttp.rupee weather @s
#RED RUPEE
execute if entity @e[type=item,tag=loot,tag=redrupee,distance=..0.5] run scoreboard players add @s rupees 10
execute if entity @e[type=item,tag=loot,tag=redrupee,distance=..0.5] run playsound minecraft:alttp.rupee weather @s
#50 RUPEES
execute if entity @e[type=item,tag=loot,tag=50rupee,distance=..0.5] run scoreboard players add @s rupees 50
execute if entity @e[type=item,tag=loot,tag=50rupee,distance=..0.5] run playsound minecraft:alttp.rupee weather @s
#100 RUPEES
execute if entity @e[type=item,tag=loot,tag=100rupee,distance=..0.5] run scoreboard players add @s rupees 100
execute if entity @e[type=item,tag=loot,tag=100rupee,distance=..0.5] run playsound minecraft:alttp.rupee weather @s
#300 RUPEES
execute if entity @e[type=item,tag=loot,tag=300rupee,distance=..0.5] run scoreboard players add @s rupees 300
execute if entity @e[type=item,tag=loot,tag=300rupee,distance=..0.5] run playsound minecraft:alttp.rupee weather @s
#HEART
execute if entity @e[type=item,tag=loot,tag=heart,distance=..0.5] run effect give @s regeneration 1 3 true
execute if entity @e[type=item,tag=loot,tag=heart,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#1 ARROW
execute if entity @e[type=item,tag=loot,tag=arrow_1,distance=..0.5] run scoreboard players add @s arrows 1
execute if entity @e[type=item,tag=loot,tag=arrow_1,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#5 ARROWS
execute if entity @e[type=item,tag=loot,tag=arrow_5,distance=..0.5] run scoreboard players add @s arrows 5
execute if entity @e[type=item,tag=loot,tag=arrow_5,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#10 ARROWS
execute if entity @e[type=item,tag=loot,tag=arrow_10,distance=..0.5] run scoreboard players add @s arrows 10
execute if entity @e[type=item,tag=loot,tag=arrow_10,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#1 BOMB
execute if entity @e[type=item,tag=loot,tag=bomb_1,distance=..0.5] run scoreboard players add @s bombs 1
execute if entity @e[type=item,tag=loot,tag=bomb_1,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#4 BOMBS
execute if entity @e[type=item,tag=loot,tag=bomb_4,distance=..0.5] run scoreboard players add @s bombs 4
execute if entity @e[type=item,tag=loot,tag=bomb_4,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#8 BOMBS
execute if entity @e[type=item,tag=loot,tag=bomb_8,distance=..0.5] run scoreboard players add @s bombs 8
execute if entity @e[type=item,tag=loot,tag=bomb_8,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#10 BOMBS
execute if entity @e[type=item,tag=loot,tag=bomb_10,distance=..0.5] run scoreboard players add @s bombs 10
execute if entity @e[type=item,tag=loot,tag=bomb_10,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#KEY
execute if entity @e[type=item,tag=loot,tag=key,distance=..0.5] run function alttp:getkey
execute if entity @e[type=item,tag=loot,tag=key,distance=..0.5] run playsound minecraft:alttp.heart weather @s
#BIG KEY
execute if entity @e[type=item,tag=loot,tag=bigkey,distance=..0.5] run function alttp:getbigkey
execute if entity @e[type=item,tag=loot,tag=bigkey,distance=..0.5] run playsound minecraft:alttp.heart weather @s

#REMOVE THE LOOT
kill @e[type=item,tag=loot,distance=..0.5]

function alttp:update_rupee_pouch