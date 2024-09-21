scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.melissa.export_version dummy
scoreboard objectives add aj.melissa.rig_loaded dummy
scoreboard objectives add aj.melissa.animation.idle.local_anim_time dummy
scoreboard objectives add aj.melissa.animation.sweeping.local_anim_time dummy
scoreboard objectives add aj.melissa.animation.blush.local_anim_time dummy
scoreboard objectives add aj.melissa.animation.offended.local_anim_time dummy
scoreboard objectives add aj.melissa.animation.walking.local_anim_time dummy
scoreboard objectives add aj.melissa.animation.idle.loop_mode dummy
scoreboard objectives add aj.melissa.animation.sweeping.loop_mode dummy
scoreboard objectives add aj.melissa.animation.blush.loop_mode dummy
scoreboard objectives add aj.melissa.animation.offended.loop_mode dummy
scoreboard objectives add aj.melissa.animation.walking.loop_mode dummy
scoreboard players set $aj.melissa.animation.idle aj.id 0
scoreboard players set $aj.melissa.animation.sweeping aj.id 1
scoreboard players set $aj.melissa.animation.blush aj.id 2
scoreboard players set $aj.melissa.animation.offended aj.id 3
scoreboard players set $aj.melissa.animation.walking aj.id 4
scoreboard players set $aj.melissa.variant.face_normal aj.id 0
scoreboard players set $aj.melissa.variant.melissa_blush aj.id 1
scoreboard players set $aj.melissa.variant.melissa_eyes_closed aj.id 2
scoreboard players set $aj.melissa.variant.melissa_eyes_down aj.id 3
scoreboard players set $aj.melissa.variant.melissa_eyes_right aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.melissa.export_version aj.i -1200454706
scoreboard players reset * aj.melissa.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.melissa.root] run function animated_java:melissa/zzzzzzzz/on_load