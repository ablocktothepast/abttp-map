scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.owen.export_version dummy
scoreboard objectives add aj.owen.rig_loaded dummy
scoreboard objectives add aj.owen.animation.idle.local_anim_time dummy
scoreboard objectives add aj.owen.animation.walking.local_anim_time dummy
scoreboard objectives add aj.owen.animation.idle.loop_mode dummy
scoreboard objectives add aj.owen.animation.walking.loop_mode dummy
scoreboard players set $aj.owen.animation.idle aj.id 0
scoreboard players set $aj.owen.animation.walking aj.id 1
scoreboard players set $aj.owen.variant.face_normal aj.id 0
scoreboard players set $aj.owen.variant.eyes_closed aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.owen.export_version aj.i -1660532369
scoreboard players reset * aj.owen.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.owen.root] run function animated_java:owen/zzzzzzzz/on_load