scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.lysander.export_version dummy
scoreboard objectives add aj.lysander.rig_loaded dummy
scoreboard objectives add aj.lysander.animation.idle.local_anim_time dummy
scoreboard objectives add aj.lysander.animation.walking.local_anim_time dummy
scoreboard objectives add aj.lysander.animation.running.local_anim_time dummy
scoreboard objectives add aj.lysander.animation.idle_sitting.local_anim_time dummy
scoreboard objectives add aj.lysander.animation.emote_sitting.local_anim_time dummy
scoreboard objectives add aj.lysander.animation.quiz_result.local_anim_time dummy
scoreboard objectives add aj.lysander.animation.idle.loop_mode dummy
scoreboard objectives add aj.lysander.animation.walking.loop_mode dummy
scoreboard objectives add aj.lysander.animation.running.loop_mode dummy
scoreboard objectives add aj.lysander.animation.idle_sitting.loop_mode dummy
scoreboard objectives add aj.lysander.animation.emote_sitting.loop_mode dummy
scoreboard objectives add aj.lysander.animation.quiz_result.loop_mode dummy
scoreboard players set $aj.lysander.animation.idle aj.id 0
scoreboard players set $aj.lysander.animation.walking aj.id 1
scoreboard players set $aj.lysander.animation.running aj.id 2
scoreboard players set $aj.lysander.animation.idle_sitting aj.id 3
scoreboard players set $aj.lysander.animation.emote_sitting aj.id 4
scoreboard players set $aj.lysander.animation.quiz_result aj.id 5
scoreboard players set $aj.lysander.variant.lysander_face_normal aj.id 0
scoreboard players set $aj.lysander.variant.lysander_eyes_left aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.lysander.export_version aj.i -793709523
scoreboard players reset * aj.lysander.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.lysander.root] run function animated_java:lysander/zzzzzzzz/on_load