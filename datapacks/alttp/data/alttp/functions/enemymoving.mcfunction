kill @e[type=item_display,tag=armos]
execute rotated 0 0 run summon item_display ~ ~0.5 ~ {item_display:"fixed",Tags:["armos"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0f,0f,-0.75f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:68}}}

# scoreboard players add ehehe dummy 1
# execute if score ehehe dummy matches 101.. run scoreboard players set ehehe dummy 0

# execute store result entity @e[type=item_display,tag=armos,limit=1] transformation.left_rotation[3] float 0.01 run scoreboard players get ehehe dummy