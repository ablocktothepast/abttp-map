scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.fiona.export_version dummy
scoreboard objectives add aj.fiona.rig_loaded dummy
scoreboard objectives add aj.fiona.animation.idle.local_anim_time dummy
scoreboard objectives add aj.fiona.animation.walking.local_anim_time dummy
scoreboard objectives add aj.fiona.animation.running.local_anim_time dummy
scoreboard objectives add aj.fiona.animation.idle_sitting.local_anim_time dummy
scoreboard objectives add aj.fiona.animation.emote.local_anim_time dummy
scoreboard objectives add aj.fiona.animation.idle.loop_mode dummy
scoreboard objectives add aj.fiona.animation.walking.loop_mode dummy
scoreboard objectives add aj.fiona.animation.running.loop_mode dummy
scoreboard objectives add aj.fiona.animation.idle_sitting.loop_mode dummy
scoreboard objectives add aj.fiona.animation.emote.loop_mode dummy
scoreboard players set $aj.fiona.animation.idle aj.id 0
scoreboard players set $aj.fiona.animation.walking aj.id 1
scoreboard players set $aj.fiona.animation.running aj.id 2
scoreboard players set $aj.fiona.animation.idle_sitting aj.id 3
scoreboard players set $aj.fiona.animation.emote aj.id 4
scoreboard players set $aj.fiona.variant.fiona_face_normal aj.id 0
scoreboard players set $aj.fiona.variant.fiona_eyes_right aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.fiona.export_version aj.i -513607150
scoreboard players reset * aj.fiona.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.fiona.root] run function animated_java:fiona/zzzzzzzz/on_load