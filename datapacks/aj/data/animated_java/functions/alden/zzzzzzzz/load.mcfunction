scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.alden.export_version dummy
scoreboard objectives add aj.alden.rig_loaded dummy
scoreboard objectives add aj.alden.animation.idle.local_anim_time dummy
scoreboard objectives add aj.alden.animation.walking.local_anim_time dummy
scoreboard objectives add aj.alden.animation.running.local_anim_time dummy
scoreboard objectives add aj.alden.animation.idle.loop_mode dummy
scoreboard objectives add aj.alden.animation.walking.loop_mode dummy
scoreboard objectives add aj.alden.animation.running.loop_mode dummy
scoreboard players set $aj.alden.animation.idle aj.id 0
scoreboard players set $aj.alden.animation.walking aj.id 1
scoreboard players set $aj.alden.animation.running aj.id 2
scoreboard players set $aj.alden.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.alden.export_version aj.i 608088697
scoreboard players reset * aj.alden.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.alden.root] run function animated_java:alden/zzzzzzzz/on_load