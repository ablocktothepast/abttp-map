scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.amara.export_version dummy
scoreboard objectives add aj.amara.rig_loaded dummy
scoreboard objectives add aj.amara.animation.idle.local_anim_time dummy
scoreboard objectives add aj.amara.animation.running.local_anim_time dummy
scoreboard objectives add aj.amara.animation.shrug.local_anim_time dummy
scoreboard objectives add aj.amara.animation.idle_sitting.local_anim_time dummy
scoreboard objectives add aj.amara.animation.emote.local_anim_time dummy
scoreboard objectives add aj.amara.animation.clap.local_anim_time dummy
scoreboard objectives add aj.amara.animation.idle.loop_mode dummy
scoreboard objectives add aj.amara.animation.running.loop_mode dummy
scoreboard objectives add aj.amara.animation.shrug.loop_mode dummy
scoreboard objectives add aj.amara.animation.idle_sitting.loop_mode dummy
scoreboard objectives add aj.amara.animation.emote.loop_mode dummy
scoreboard objectives add aj.amara.animation.clap.loop_mode dummy
scoreboard players set $aj.amara.animation.idle aj.id 0
scoreboard players set $aj.amara.animation.running aj.id 1
scoreboard players set $aj.amara.animation.shrug aj.id 2
scoreboard players set $aj.amara.animation.idle_sitting aj.id 3
scoreboard players set $aj.amara.animation.emote aj.id 4
scoreboard players set $aj.amara.animation.clap aj.id 5
scoreboard players set $aj.amara.variant.amara_normal_face aj.id 0
scoreboard players set $aj.amara.variant.amara_blush aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.amara.export_version aj.i 1108524336
scoreboard players reset * aj.amara.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.amara.root] run function animated_java:amara/zzzzzzzz/on_load