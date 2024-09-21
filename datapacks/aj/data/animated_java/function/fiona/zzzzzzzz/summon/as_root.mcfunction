execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.fiona.rig_loaded 1
scoreboard players operation @s aj.fiona.export_version = aj.fiona.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:fiona/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.fiona.variant.fiona_face_normal aj.id run function animated_java:fiona/zzzzzzzz/apply_variant/fiona_face_normal/as_root
execute if score #variant aj.i = $aj.fiona.variant.fiona_eyes_right aj.id run function animated_java:fiona/zzzzzzzz/apply_variant/fiona_eyes_right/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.fiona.animation.idle aj.id run function animated_java:fiona/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.fiona.animation.idle aj.id run scoreboard players operation @s aj.fiona.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.fiona.animation.walking aj.id run function animated_java:fiona/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score #animation aj.i = $aj.fiona.animation.walking aj.id run scoreboard players operation @s aj.fiona.animation.walking.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.fiona.animation.running aj.id run function animated_java:fiona/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.fiona.animation.running aj.id run scoreboard players operation @s aj.fiona.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.fiona.animation.idle_sitting aj.id run function animated_java:fiona/zzzzzzzz/animations/idle_sitting/apply_frame_as_root
execute if score #animation aj.i = $aj.fiona.animation.idle_sitting aj.id run scoreboard players operation @s aj.fiona.animation.idle_sitting.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.fiona.animation.emote aj.id run function animated_java:fiona/zzzzzzzz/animations/emote/apply_frame_as_root
execute if score #animation aj.i = $aj.fiona.animation.emote aj.id run scoreboard players operation @s aj.fiona.animation.emote.local_anim_time = #frame aj.i
execute at @s run function #animated_java:fiona/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i