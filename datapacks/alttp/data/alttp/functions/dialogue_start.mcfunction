# title @a times 3t 10t 3t
# title @a title ["","\uE006"]
scoreboard players set . crosshair 0
effect give @p resistance 10 255 true

##Third-person view (unless cutscene dialogue)
scoreboard players set letterIndex dialogue -1
function alttp:dialogue_ids
execute if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 run function alttp:dialogue_thirdperson
execute if score cutscene dialogue matches 1 run function alttp:dialogue_post_start
execute if score firstperson dialogue matches 1 run function alttp:dialogue_post_start

execute if score dlfov options matches 70 run effect give @p slowness infinite 1 true
execute if score dlfov options matches 85 run effect give @p slowness infinite 3 true
execute if score dlfov options matches 110 run effect give @p slowness infinite 5 true

bossbar add dialoguebars "\uE017"
bossbar set dialoguebars players @p
bossbar set dialoguebars visible true

#Make sure all parts exist
kill @e[type=text_display,tag=dialogue_td]
kill @e[type=text_display,tag=dialogue_nd]
kill @e[type=item_display,tag=dialogue_bg]
kill @e[type=item_display,tag=dialogue_na]
kill @e[type=interaction,tag=dialogue_in]
summon text_display 0 0 0 {width:200f,billboard:"center",line_width:215,alignment:"left",Tags:["dialogue_td"],text:'{"text":"\\nHello, this is some epic dialogue, lolzies!\\nI am the cripple\\nThis is the final line..."}',background:16777215,interpolation_start:-1,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.09f]},brightness:{sky:15,block:15}}

summon text_display 0 0 0 {width:200f,billboard:"center",line_width:200,alignment:"left",Tags:["dialogue_nd"],text:'{"text":"\\nZelda"}',background:16777215,interpolation_start:-1,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.07f,0.07f,0.07f]},brightness:{sky:15,block:15}}

summon item_display ~ ~ ~ {billboard:"center",interpolation_start:-1,interpolation_duration:0,Tags:["dialogue_bg"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.7f,0f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:115}},brightness:{sky:15,block:15}}

summon item_display ~ ~ ~ {billboard:"center",interpolation_start:-1,interpolation_duration:0,Tags:["dialogue_na"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.04f,0.04f,0f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:116}},brightness:{sky:15,block:15}}

summon interaction ~ ~ ~ {Tags:["dialogue_in"],height:4,width:4}

bossbar add dialoguecontrols [{"keybind":"key.attack"},{"text":" to continue"},{"text":" | ","color":"gray"},{"text":"Scroll to select choices"}]
bossbar set dialoguecontrols players @p
bossbar set dialoguecontrols visible true