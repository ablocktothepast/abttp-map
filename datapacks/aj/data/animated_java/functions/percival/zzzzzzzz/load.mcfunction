scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.percival.export_version dummy
scoreboard objectives add aj.percival.rig_loaded dummy
scoreboard objectives add aj.percival.animation.idle.local_anim_time dummy
scoreboard objectives add aj.percival.animation.walking.local_anim_time dummy
scoreboard objectives add aj.percival.animation.running.local_anim_time dummy
scoreboard objectives add aj.percival.animation.idle_sitting.local_anim_time dummy
scoreboard objectives add aj.percival.animation.idle_sitting_grin.local_anim_time dummy
scoreboard objectives add aj.percival.animation.emote_sitting.local_anim_time dummy
scoreboard objectives add aj.percival.animation.idle.loop_mode dummy
scoreboard objectives add aj.percival.animation.walking.loop_mode dummy
scoreboard objectives add aj.percival.animation.running.loop_mode dummy
scoreboard objectives add aj.percival.animation.idle_sitting.loop_mode dummy
scoreboard objectives add aj.percival.animation.idle_sitting_grin.loop_mode dummy
scoreboard objectives add aj.percival.animation.emote_sitting.loop_mode dummy
scoreboard players set $aj.percival.animation.idle aj.id 0
scoreboard players set $aj.percival.animation.walking aj.id 1
scoreboard players set $aj.percival.animation.running aj.id 2
scoreboard players set $aj.percival.animation.idle_sitting aj.id 3
scoreboard players set $aj.percival.animation.idle_sitting_grin aj.id 4
scoreboard players set $aj.percival.animation.emote_sitting aj.id 5
scoreboard players set $aj.percival.variant.percival_normal_face aj.id 0
scoreboard players set $aj.percival.variant.percival_grin aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.percival.export_version aj.i -834825410
scoreboard players reset * aj.percival.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.percival.root] run function animated_java:percival/zzzzzzzz/on_load