scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.erin.export_version dummy
scoreboard objectives add aj.erin.rig_loaded dummy
scoreboard objectives add aj.erin.animation.running.local_anim_time dummy
scoreboard objectives add aj.erin.animation.idle.local_anim_time dummy
scoreboard objectives add aj.erin.animation.running.loop_mode dummy
scoreboard objectives add aj.erin.animation.idle.loop_mode dummy
scoreboard players set $aj.erin.animation.running aj.id 0
scoreboard players set $aj.erin.animation.idle aj.id 1
scoreboard players set $aj.erin.variant.erin_face_normal aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.erin.export_version aj.i -260794041
scoreboard players reset * aj.erin.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.erin.root] run function animated_java:erin/zzzzzzzz/on_load