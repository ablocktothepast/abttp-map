scoreboard players set @s enemydummy 100

execute unless entity @s[tag=icerodfrozen] run summon armor_stand ~ ~1.5 ~ {HandItems:[{components:{"minecraft:custom_model_data":159},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","wwizzrobemagic","nolifesteal"]}
execute unless entity @s[tag=icerodfrozen] as @e[type=armor_stand,tag=wwizzrobemagic,tag=!posed] facing entity @p feet run tp @s ~ ~1.5 ~ ~ ~
tag @e[type=armor_stand,tag=wwizzrobemagic,tag=!posed] add posed

execute unless entity @s[tag=icerodfrozen] run playsound minecraft:alttp.fireball weather @a ~ ~ ~ 100000 1.3