execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.neal.rig_loaded 1
scoreboard players operation @s aj.neal.export_version = aj.neal.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:neal/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.neal.variant.neal_face_normal aj.id run function animated_java:neal/zzzzzzzz/apply_variant/neal_face_normal/as_root
execute if score #variant aj.i = $aj.neal.variant.neal_eyes_closed aj.id run function animated_java:neal/zzzzzzzz/apply_variant/neal_eyes_closed/as_root
execute if score #variant aj.i = $aj.neal.variant.neal_eyes_down aj.id run function animated_java:neal/zzzzzzzz/apply_variant/neal_eyes_down/as_root
execute if score #variant aj.i = $aj.neal.variant.neal_startled aj.id run function animated_java:neal/zzzzzzzz/apply_variant/neal_startled/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.neal.animation.idle aj.id run function animated_java:neal/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.neal.animation.idle aj.id run scoreboard players operation @s aj.neal.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.neal.animation.running aj.id run function animated_java:neal/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.neal.animation.running aj.id run scoreboard players operation @s aj.neal.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.neal.animation.emote aj.id run function animated_java:neal/zzzzzzzz/animations/emote/apply_frame_as_root
execute if score #animation aj.i = $aj.neal.animation.emote aj.id run scoreboard players operation @s aj.neal.animation.emote.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.neal.animation.departure aj.id run function animated_java:neal/zzzzzzzz/animations/departure/apply_frame_as_root
execute if score #animation aj.i = $aj.neal.animation.departure aj.id run scoreboard players operation @s aj.neal.animation.departure.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.neal.animation.sleepy aj.id run function animated_java:neal/zzzzzzzz/animations/sleepy/apply_frame_as_root
execute if score #animation aj.i = $aj.neal.animation.sleepy aj.id run scoreboard players operation @s aj.neal.animation.sleepy.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.neal.animation.was_found aj.id run function animated_java:neal/zzzzzzzz/animations/was_found/apply_frame_as_root
execute if score #animation aj.i = $aj.neal.animation.was_found aj.id run scoreboard players operation @s aj.neal.animation.was_found.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.neal.animation.frienship aj.id run function animated_java:neal/zzzzzzzz/animations/frienship/apply_frame_as_root
execute if score #animation aj.i = $aj.neal.animation.frienship aj.id run scoreboard players operation @s aj.neal.animation.frienship.local_anim_time = #frame aj.i
execute at @s run function #animated_java:neal/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i