scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.bernard.export_version dummy
scoreboard objectives add aj.bernard.rig_loaded dummy
scoreboard objectives add aj.bernard.animation.idle.local_anim_time dummy
scoreboard objectives add aj.bernard.animation.running.local_anim_time dummy
scoreboard objectives add aj.bernard.animation.emote.local_anim_time dummy
scoreboard objectives add aj.bernard.animation.departure.local_anim_time dummy
scoreboard objectives add aj.bernard.animation.hiding.local_anim_time dummy
scoreboard objectives add aj.bernard.animation.was_found.local_anim_time dummy
scoreboard objectives add aj.bernard.animation.frienship.local_anim_time dummy
scoreboard objectives add aj.bernard.animation.idle.loop_mode dummy
scoreboard objectives add aj.bernard.animation.running.loop_mode dummy
scoreboard objectives add aj.bernard.animation.emote.loop_mode dummy
scoreboard objectives add aj.bernard.animation.departure.loop_mode dummy
scoreboard objectives add aj.bernard.animation.hiding.loop_mode dummy
scoreboard objectives add aj.bernard.animation.was_found.loop_mode dummy
scoreboard objectives add aj.bernard.animation.frienship.loop_mode dummy
scoreboard players set $aj.bernard.animation.idle aj.id 0
scoreboard players set $aj.bernard.animation.running aj.id 1
scoreboard players set $aj.bernard.animation.emote aj.id 2
scoreboard players set $aj.bernard.animation.departure aj.id 3
scoreboard players set $aj.bernard.animation.hiding aj.id 4
scoreboard players set $aj.bernard.animation.was_found aj.id 5
scoreboard players set $aj.bernard.animation.frienship aj.id 6
scoreboard players set $aj.bernard.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.bernard.export_version aj.i 132859038
scoreboard players reset * aj.bernard.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.bernard.root] run function animated_java:bernard/zzzzzzzz/on_load