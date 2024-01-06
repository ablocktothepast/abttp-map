scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.cedric.export_version dummy
scoreboard objectives add aj.cedric.rig_loaded dummy
scoreboard objectives add aj.cedric.animation.idle.local_anim_time dummy
scoreboard objectives add aj.cedric.animation.walking.local_anim_time dummy
scoreboard objectives add aj.cedric.animation.idle.loop_mode dummy
scoreboard objectives add aj.cedric.animation.walking.loop_mode dummy
scoreboard players set $aj.cedric.animation.idle aj.id 0
scoreboard players set $aj.cedric.animation.walking aj.id 1
scoreboard players set $aj.cedric.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.cedric.export_version aj.i 837492880
scoreboard players reset * aj.cedric.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.cedric.root] run function animated_java:cedric/zzzzzzzz/on_load