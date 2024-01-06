scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.villager_link.export_version dummy
scoreboard objectives add aj.villager_link.rig_loaded dummy
scoreboard objectives add aj.villager_link.animation.waking_up.local_anim_time dummy
scoreboard objectives add aj.villager_link.animation.idle.local_anim_time dummy
scoreboard objectives add aj.villager_link.animation.walking.local_anim_time dummy
scoreboard objectives add aj.villager_link.animation.surprised.local_anim_time dummy
scoreboard objectives add aj.villager_link.animation.idle_sitting.local_anim_time dummy
scoreboard objectives add aj.villager_link.animation.emote_sitting.local_anim_time dummy
scoreboard objectives add aj.villager_link.animation.waking_up.loop_mode dummy
scoreboard objectives add aj.villager_link.animation.idle.loop_mode dummy
scoreboard objectives add aj.villager_link.animation.walking.loop_mode dummy
scoreboard objectives add aj.villager_link.animation.surprised.loop_mode dummy
scoreboard objectives add aj.villager_link.animation.idle_sitting.loop_mode dummy
scoreboard objectives add aj.villager_link.animation.emote_sitting.loop_mode dummy
scoreboard players set $aj.villager_link.animation.waking_up aj.id 0
scoreboard players set $aj.villager_link.animation.idle aj.id 1
scoreboard players set $aj.villager_link.animation.walking aj.id 2
scoreboard players set $aj.villager_link.animation.surprised aj.id 3
scoreboard players set $aj.villager_link.animation.idle_sitting aj.id 4
scoreboard players set $aj.villager_link.animation.emote_sitting aj.id 5
scoreboard players set $aj.villager_link.variant.eyes_closed aj.id 0
scoreboard players set $aj.villager_link.variant.eyes_half_closed aj.id 1
scoreboard players set $aj.villager_link.variant.eyes_left aj.id 2
scoreboard players set $aj.villager_link.variant.eyes_opened aj.id 3
scoreboard players set $aj.villager_link.variant.eyes_right aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.villager_link.export_version aj.i 297490938
scoreboard players reset * aj.villager_link.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.villager_link.root] run function animated_java:villager_link/zzzzzzzz/on_load