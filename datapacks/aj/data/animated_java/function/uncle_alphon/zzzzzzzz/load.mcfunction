scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.uncle_alphon.export_version dummy
scoreboard objectives add aj.uncle_alphon.rig_loaded dummy
scoreboard objectives add aj.uncle_alphon.animation.idle.local_anim_time dummy
scoreboard objectives add aj.uncle_alphon.animation.idle_grin.local_anim_time dummy
scoreboard objectives add aj.uncle_alphon.animation.walking.local_anim_time dummy
scoreboard objectives add aj.uncle_alphon.animation.apple_basket.local_anim_time dummy
scoreboard objectives add aj.uncle_alphon.animation.surprised.local_anim_time dummy
scoreboard objectives add aj.uncle_alphon.animation.idle_sitting.local_anim_time dummy
scoreboard objectives add aj.uncle_alphon.animation.idle.loop_mode dummy
scoreboard objectives add aj.uncle_alphon.animation.idle_grin.loop_mode dummy
scoreboard objectives add aj.uncle_alphon.animation.walking.loop_mode dummy
scoreboard objectives add aj.uncle_alphon.animation.apple_basket.loop_mode dummy
scoreboard objectives add aj.uncle_alphon.animation.surprised.loop_mode dummy
scoreboard objectives add aj.uncle_alphon.animation.idle_sitting.loop_mode dummy
scoreboard players set $aj.uncle_alphon.animation.idle aj.id 0
scoreboard players set $aj.uncle_alphon.animation.idle_grin aj.id 1
scoreboard players set $aj.uncle_alphon.animation.walking aj.id 2
scoreboard players set $aj.uncle_alphon.animation.apple_basket aj.id 3
scoreboard players set $aj.uncle_alphon.animation.surprised aj.id 4
scoreboard players set $aj.uncle_alphon.animation.idle_sitting aj.id 5
scoreboard players set $aj.uncle_alphon.variant.uncle_normal_face aj.id 0
scoreboard players set $aj.uncle_alphon.variant.uncle_eyes_closed aj.id 1
scoreboard players set $aj.uncle_alphon.variant.uncle_eyes_closed_grin aj.id 2
scoreboard players set $aj.uncle_alphon.variant.uncle_eyes_left aj.id 3
scoreboard players set $aj.uncle_alphon.variant.uncle_grin aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.uncle_alphon.export_version aj.i -1278605728
scoreboard players reset * aj.uncle_alphon.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/zzzzzzzz/on_load