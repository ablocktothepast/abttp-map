scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.thaddeus.export_version dummy
scoreboard objectives add aj.thaddeus.rig_loaded dummy
scoreboard objectives add aj.thaddeus.animation.idle.local_anim_time dummy
scoreboard objectives add aj.thaddeus.animation.walking.local_anim_time dummy
scoreboard objectives add aj.thaddeus.animation.running.local_anim_time dummy
scoreboard objectives add aj.thaddeus.animation.surprised.local_anim_time dummy
scoreboard objectives add aj.thaddeus.animation.hovering.local_anim_time dummy
scoreboard objectives add aj.thaddeus.animation.standing_up.local_anim_time dummy
scoreboard objectives add aj.thaddeus.animation.idle.loop_mode dummy
scoreboard objectives add aj.thaddeus.animation.walking.loop_mode dummy
scoreboard objectives add aj.thaddeus.animation.running.loop_mode dummy
scoreboard objectives add aj.thaddeus.animation.surprised.loop_mode dummy
scoreboard objectives add aj.thaddeus.animation.hovering.loop_mode dummy
scoreboard objectives add aj.thaddeus.animation.standing_up.loop_mode dummy
scoreboard players set $aj.thaddeus.animation.idle aj.id 0
scoreboard players set $aj.thaddeus.animation.walking aj.id 1
scoreboard players set $aj.thaddeus.animation.running aj.id 2
scoreboard players set $aj.thaddeus.animation.surprised aj.id 3
scoreboard players set $aj.thaddeus.animation.hovering aj.id 4
scoreboard players set $aj.thaddeus.animation.standing_up aj.id 5
scoreboard players set $aj.thaddeus.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.thaddeus.export_version aj.i -1861026578
scoreboard players reset * aj.thaddeus.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/zzzzzzzz/on_load