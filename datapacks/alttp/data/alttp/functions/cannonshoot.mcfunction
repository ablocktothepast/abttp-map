scoreboard players set @s enemydummy3 0

summon armor_stand ^ ^0.075 ^0.75 {Marker:1b,Invisible:1b,Tags:["enemy","cannonball","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:224}},{}]}

execute as @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest] run tp @s ^ ^0.075 ^0.75 ~ ~

playsound minecraft:alttp.cannonballs weather @p[distance=..15] ~ ~ ~ 0.8 1 0.3