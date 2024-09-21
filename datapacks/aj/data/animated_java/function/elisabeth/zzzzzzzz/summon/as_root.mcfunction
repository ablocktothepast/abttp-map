execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.elisabeth.rig_loaded 1
scoreboard players operation @s aj.elisabeth.export_version = aj.elisabeth.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:elisabeth/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.elisabeth.variant.elisabeth_face_normal aj.id run function animated_java:elisabeth/zzzzzzzz/apply_variant/elisabeth_face_normal/as_root
execute if score #variant aj.i = $aj.elisabeth.variant.elisabeth_eyes_closed aj.id run function animated_java:elisabeth/zzzzzzzz/apply_variant/elisabeth_eyes_closed/as_root
execute if score #variant aj.i = $aj.elisabeth.variant.elisabeth_eyes_right aj.id run function animated_java:elisabeth/zzzzzzzz/apply_variant/elisabeth_eyes_right/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.elisabeth.animation.idle aj.id run function animated_java:elisabeth/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.elisabeth.animation.idle aj.id run scoreboard players operation @s aj.elisabeth.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.elisabeth.animation.running aj.id run function animated_java:elisabeth/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.elisabeth.animation.running aj.id run scoreboard players operation @s aj.elisabeth.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.elisabeth.animation.emote aj.id run function animated_java:elisabeth/zzzzzzzz/animations/emote/apply_frame_as_root
execute if score #animation aj.i = $aj.elisabeth.animation.emote aj.id run scoreboard players operation @s aj.elisabeth.animation.emote.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.elisabeth.animation.departure aj.id run function animated_java:elisabeth/zzzzzzzz/animations/departure/apply_frame_as_root
execute if score #animation aj.i = $aj.elisabeth.animation.departure aj.id run scoreboard players operation @s aj.elisabeth.animation.departure.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.elisabeth.animation.was_found aj.id run function animated_java:elisabeth/zzzzzzzz/animations/was_found/apply_frame_as_root
execute if score #animation aj.i = $aj.elisabeth.animation.was_found aj.id run scoreboard players operation @s aj.elisabeth.animation.was_found.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.elisabeth.animation.frienship aj.id run function animated_java:elisabeth/zzzzzzzz/animations/frienship/apply_frame_as_root
execute if score #animation aj.i = $aj.elisabeth.animation.frienship aj.id run scoreboard players operation @s aj.elisabeth.animation.frienship.local_anim_time = #frame aj.i
execute at @s run function #animated_java:elisabeth/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i