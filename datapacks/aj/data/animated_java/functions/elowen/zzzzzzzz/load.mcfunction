scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.elowen.export_version dummy
scoreboard objectives add aj.elowen.rig_loaded dummy
scoreboard objectives add aj.elowen.animation.idle.local_anim_time dummy
scoreboard objectives add aj.elowen.animation.walking.local_anim_time dummy
scoreboard objectives add aj.elowen.animation.idle.loop_mode dummy
scoreboard objectives add aj.elowen.animation.walking.loop_mode dummy
scoreboard players set $aj.elowen.animation.idle aj.id 0
scoreboard players set $aj.elowen.animation.walking aj.id 1
scoreboard players set $aj.elowen.variant.elowen_normal_face aj.id 0
scoreboard players set $aj.elowen.variant.elowen_eyes_right aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.elowen.export_version aj.i 252065351
scoreboard players reset * aj.elowen.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.elowen.root] run function animated_java:elowen/zzzzzzzz/on_load