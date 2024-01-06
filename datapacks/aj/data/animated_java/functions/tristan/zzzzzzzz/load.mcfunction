scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.tristan.export_version dummy
scoreboard objectives add aj.tristan.rig_loaded dummy
scoreboard objectives add aj.tristan.animation.walking.local_anim_time dummy
scoreboard objectives add aj.tristan.animation.idle.local_anim_time dummy
scoreboard objectives add aj.tristan.animation.walking.loop_mode dummy
scoreboard objectives add aj.tristan.animation.idle.loop_mode dummy
scoreboard players set $aj.tristan.animation.walking aj.id 0
scoreboard players set $aj.tristan.animation.idle aj.id 1
scoreboard players set $aj.tristan.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.tristan.export_version aj.i 962894319
scoreboard players reset * aj.tristan.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.tristan.root] run function animated_java:tristan/zzzzzzzz/on_load