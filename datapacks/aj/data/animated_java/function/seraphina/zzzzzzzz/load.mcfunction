scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.seraphina.export_version dummy
scoreboard objectives add aj.seraphina.rig_loaded dummy
scoreboard objectives add aj.seraphina.animation.idle.local_anim_time dummy
scoreboard objectives add aj.seraphina.animation.walking.local_anim_time dummy
scoreboard objectives add aj.seraphina.animation.idle.loop_mode dummy
scoreboard objectives add aj.seraphina.animation.walking.loop_mode dummy
scoreboard players set $aj.seraphina.animation.idle aj.id 0
scoreboard players set $aj.seraphina.animation.walking aj.id 1
scoreboard players set $aj.seraphina.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.seraphina.export_version aj.i 285692938
scoreboard players reset * aj.seraphina.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.seraphina.root] run function animated_java:seraphina/zzzzzzzz/on_load