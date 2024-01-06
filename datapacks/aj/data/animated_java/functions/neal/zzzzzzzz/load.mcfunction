scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.neal.export_version dummy
scoreboard objectives add aj.neal.rig_loaded dummy
scoreboard objectives add aj.neal.animation.idle.local_anim_time dummy
scoreboard objectives add aj.neal.animation.running.local_anim_time dummy
scoreboard objectives add aj.neal.animation.emote.local_anim_time dummy
scoreboard objectives add aj.neal.animation.departure.local_anim_time dummy
scoreboard objectives add aj.neal.animation.sleepy.local_anim_time dummy
scoreboard objectives add aj.neal.animation.was_found.local_anim_time dummy
scoreboard objectives add aj.neal.animation.frienship.local_anim_time dummy
scoreboard objectives add aj.neal.animation.idle.loop_mode dummy
scoreboard objectives add aj.neal.animation.running.loop_mode dummy
scoreboard objectives add aj.neal.animation.emote.loop_mode dummy
scoreboard objectives add aj.neal.animation.departure.loop_mode dummy
scoreboard objectives add aj.neal.animation.sleepy.loop_mode dummy
scoreboard objectives add aj.neal.animation.was_found.loop_mode dummy
scoreboard objectives add aj.neal.animation.frienship.loop_mode dummy
scoreboard players set $aj.neal.animation.idle aj.id 0
scoreboard players set $aj.neal.animation.running aj.id 1
scoreboard players set $aj.neal.animation.emote aj.id 2
scoreboard players set $aj.neal.animation.departure aj.id 3
scoreboard players set $aj.neal.animation.sleepy aj.id 4
scoreboard players set $aj.neal.animation.was_found aj.id 5
scoreboard players set $aj.neal.animation.frienship aj.id 6
scoreboard players set $aj.neal.variant.neal_face_normal aj.id 0
scoreboard players set $aj.neal.variant.neal_eyes_closed aj.id 1
scoreboard players set $aj.neal.variant.neal_eyes_down aj.id 2
scoreboard players set $aj.neal.variant.neal_startled aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.neal.export_version aj.i 1195039621
scoreboard players reset * aj.neal.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.neal.root] run function animated_java:neal/zzzzzzzz/on_load