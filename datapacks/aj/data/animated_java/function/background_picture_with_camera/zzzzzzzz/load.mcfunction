scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.background_picture_with_camera.export_version dummy
scoreboard objectives add aj.background_picture_with_camera.rig_loaded dummy
scoreboard objectives add aj.background_picture_with_camera.animation.animation.local_anim_time dummy
scoreboard objectives add aj.background_picture_with_camera.animation.animation.loop_mode dummy
scoreboard players set $aj.background_picture_with_camera.animation.animation aj.id 0
scoreboard players set $aj.background_picture_with_camera.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.background_picture_with_camera.export_version aj.i -465492964
scoreboard players reset * aj.background_picture_with_camera.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.background_picture_with_camera.root] run function animated_java:background_picture_with_camera/zzzzzzzz/on_load