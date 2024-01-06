scoreboard players set @s enemydummy -60

execute rotated ~ 0 unless entity @s[tag=icerodfrozen] run summon armor_stand ^ ^1.45 ^0.6 {Marker:1b,Invisible:1b,Tags:["enemy","gs_head","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:202}},{}]}

execute as @e[type=armor_stand,tag=gs_head,tag=!posed] run tp @s ~ ~1.45 ~ ~ 0
tag @e[type=armor_stand,tag=gs_head,tag=!posed] add posed