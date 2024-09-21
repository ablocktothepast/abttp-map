scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.elisabeth.export_version dummy
scoreboard objectives add aj.elisabeth.rig_loaded dummy
scoreboard objectives add aj.elisabeth.animation.idle.local_anim_time dummy
scoreboard objectives add aj.elisabeth.animation.running.local_anim_time dummy
scoreboard objectives add aj.elisabeth.animation.emote.local_anim_time dummy
scoreboard objectives add aj.elisabeth.animation.departure.local_anim_time dummy
scoreboard objectives add aj.elisabeth.animation.was_found.local_anim_time dummy
scoreboard objectives add aj.elisabeth.animation.frienship.local_anim_time dummy
scoreboard objectives add aj.elisabeth.animation.idle.loop_mode dummy
scoreboard objectives add aj.elisabeth.animation.running.loop_mode dummy
scoreboard objectives add aj.elisabeth.animation.emote.loop_mode dummy
scoreboard objectives add aj.elisabeth.animation.departure.loop_mode dummy
scoreboard objectives add aj.elisabeth.animation.was_found.loop_mode dummy
scoreboard objectives add aj.elisabeth.animation.frienship.loop_mode dummy
scoreboard players set $aj.elisabeth.animation.idle aj.id 0
scoreboard players set $aj.elisabeth.animation.running aj.id 1
scoreboard players set $aj.elisabeth.animation.emote aj.id 2
scoreboard players set $aj.elisabeth.animation.departure aj.id 3
scoreboard players set $aj.elisabeth.animation.was_found aj.id 4
scoreboard players set $aj.elisabeth.animation.frienship aj.id 5
scoreboard players set $aj.elisabeth.variant.elisabeth_face_normal aj.id 0
scoreboard players set $aj.elisabeth.variant.elisabeth_eyes_closed aj.id 1
scoreboard players set $aj.elisabeth.variant.elisabeth_eyes_right aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.elisabeth.export_version aj.i -958018309
scoreboard players reset * aj.elisabeth.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/zzzzzzzz/on_load