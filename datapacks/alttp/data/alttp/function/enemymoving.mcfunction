kill @e[type=item_display,tag=armos]
execute rotated 0 0 run summon item_display ~ ~0.5 ~ {Tags:["armos"],item:{components:{"minecraft:custom_model_data":68},count:1,id:"minecraft:carrot_on_a_stick"},item_display:"fixed",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,-0.75f]}}

# scoreboard players add ehehe dummy 1
# execute if score ehehe dummy matches 101.. run scoreboard players set ehehe dummy 0

# execute store result entity @e[type=item_display,tag=armos,limit=1] transformation.left_rotation[3] float 0.01 run scoreboard players get ehehe dummy