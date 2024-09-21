execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.villager_link.rig_loaded 1
scoreboard players operation @s aj.villager_link.export_version = aj.villager_link.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:villager_link/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.villager_link.variant.eyes_closed aj.id run function animated_java:villager_link/zzzzzzzz/apply_variant/eyes_closed/as_root
execute if score #variant aj.i = $aj.villager_link.variant.eyes_half_closed aj.id run function animated_java:villager_link/zzzzzzzz/apply_variant/eyes_half_closed/as_root
execute if score #variant aj.i = $aj.villager_link.variant.eyes_left aj.id run function animated_java:villager_link/zzzzzzzz/apply_variant/eyes_left/as_root
execute if score #variant aj.i = $aj.villager_link.variant.eyes_opened aj.id run function animated_java:villager_link/zzzzzzzz/apply_variant/eyes_opened/as_root
execute if score #variant aj.i = $aj.villager_link.variant.eyes_right aj.id run function animated_java:villager_link/zzzzzzzz/apply_variant/eyes_right/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.villager_link.animation.waking_up aj.id run function animated_java:villager_link/zzzzzzzz/animations/waking_up/apply_frame_as_root
execute if score #animation aj.i = $aj.villager_link.animation.waking_up aj.id run scoreboard players operation @s aj.villager_link.animation.waking_up.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.villager_link.animation.idle aj.id run function animated_java:villager_link/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.villager_link.animation.idle aj.id run scoreboard players operation @s aj.villager_link.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.villager_link.animation.walking aj.id run function animated_java:villager_link/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score #animation aj.i = $aj.villager_link.animation.walking aj.id run scoreboard players operation @s aj.villager_link.animation.walking.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.villager_link.animation.surprised aj.id run function animated_java:villager_link/zzzzzzzz/animations/surprised/apply_frame_as_root
execute if score #animation aj.i = $aj.villager_link.animation.surprised aj.id run scoreboard players operation @s aj.villager_link.animation.surprised.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.villager_link.animation.idle_sitting aj.id run function animated_java:villager_link/zzzzzzzz/animations/idle_sitting/apply_frame_as_root
execute if score #animation aj.i = $aj.villager_link.animation.idle_sitting aj.id run scoreboard players operation @s aj.villager_link.animation.idle_sitting.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.villager_link.animation.emote_sitting aj.id run function animated_java:villager_link/zzzzzzzz/animations/emote_sitting/apply_frame_as_root
execute if score #animation aj.i = $aj.villager_link.animation.emote_sitting aj.id run scoreboard players operation @s aj.villager_link.animation.emote_sitting.local_anim_time = #frame aj.i
execute at @s run function #animated_java:villager_link/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i