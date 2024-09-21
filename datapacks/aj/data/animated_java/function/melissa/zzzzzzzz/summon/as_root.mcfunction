execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.melissa.rig_loaded 1
scoreboard players operation @s aj.melissa.export_version = aj.melissa.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:melissa/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.melissa.variant.face_normal aj.id run function animated_java:melissa/zzzzzzzz/apply_variant/face_normal/as_root
execute if score #variant aj.i = $aj.melissa.variant.melissa_blush aj.id run function animated_java:melissa/zzzzzzzz/apply_variant/melissa_blush/as_root
execute if score #variant aj.i = $aj.melissa.variant.melissa_eyes_closed aj.id run function animated_java:melissa/zzzzzzzz/apply_variant/melissa_eyes_closed/as_root
execute if score #variant aj.i = $aj.melissa.variant.melissa_eyes_down aj.id run function animated_java:melissa/zzzzzzzz/apply_variant/melissa_eyes_down/as_root
execute if score #variant aj.i = $aj.melissa.variant.melissa_eyes_right aj.id run function animated_java:melissa/zzzzzzzz/apply_variant/melissa_eyes_right/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.melissa.animation.idle aj.id run function animated_java:melissa/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.melissa.animation.idle aj.id run scoreboard players operation @s aj.melissa.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.melissa.animation.sweeping aj.id run function animated_java:melissa/zzzzzzzz/animations/sweeping/apply_frame_as_root
execute if score #animation aj.i = $aj.melissa.animation.sweeping aj.id run scoreboard players operation @s aj.melissa.animation.sweeping.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.melissa.animation.blush aj.id run function animated_java:melissa/zzzzzzzz/animations/blush/apply_frame_as_root
execute if score #animation aj.i = $aj.melissa.animation.blush aj.id run scoreboard players operation @s aj.melissa.animation.blush.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.melissa.animation.offended aj.id run function animated_java:melissa/zzzzzzzz/animations/offended/apply_frame_as_root
execute if score #animation aj.i = $aj.melissa.animation.offended aj.id run scoreboard players operation @s aj.melissa.animation.offended.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.melissa.animation.walking aj.id run function animated_java:melissa/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score #animation aj.i = $aj.melissa.animation.walking aj.id run scoreboard players operation @s aj.melissa.animation.walking.local_anim_time = #frame aj.i
execute at @s run function #animated_java:melissa/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i