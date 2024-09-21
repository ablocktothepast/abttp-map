scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.eamon.export_version dummy
scoreboard objectives add aj.eamon.rig_loaded dummy
scoreboard objectives add aj.eamon.animation.idle.local_anim_time dummy
scoreboard objectives add aj.eamon.animation.idle_interacting.local_anim_time dummy
scoreboard objectives add aj.eamon.animation.idle.loop_mode dummy
scoreboard objectives add aj.eamon.animation.idle_interacting.loop_mode dummy
scoreboard players set $aj.eamon.animation.idle aj.id 0
scoreboard players set $aj.eamon.animation.idle_interacting aj.id 1
scoreboard players set $aj.eamon.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.eamon.export_version aj.i -204813155
scoreboard players reset * aj.eamon.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.eamon.root] run function animated_java:eamon/zzzzzzzz/on_load