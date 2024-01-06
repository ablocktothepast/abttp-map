execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.lysander.rig_loaded 1
scoreboard players operation @s aj.lysander.export_version = aj.lysander.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:lysander/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.lysander.variant.lysander_face_normal aj.id run function animated_java:lysander/zzzzzzzz/apply_variant/lysander_face_normal/as_root
execute if score #variant aj.i = $aj.lysander.variant.lysander_eyes_left aj.id run function animated_java:lysander/zzzzzzzz/apply_variant/lysander_eyes_left/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lysander.animation.idle aj.id run function animated_java:lysander/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.lysander.animation.idle aj.id run scoreboard players operation @s aj.lysander.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lysander.animation.walking aj.id run function animated_java:lysander/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score #animation aj.i = $aj.lysander.animation.walking aj.id run scoreboard players operation @s aj.lysander.animation.walking.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lysander.animation.running aj.id run function animated_java:lysander/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.lysander.animation.running aj.id run scoreboard players operation @s aj.lysander.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lysander.animation.idle_sitting aj.id run function animated_java:lysander/zzzzzzzz/animations/idle_sitting/apply_frame_as_root
execute if score #animation aj.i = $aj.lysander.animation.idle_sitting aj.id run scoreboard players operation @s aj.lysander.animation.idle_sitting.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lysander.animation.emote_sitting aj.id run function animated_java:lysander/zzzzzzzz/animations/emote_sitting/apply_frame_as_root
execute if score #animation aj.i = $aj.lysander.animation.emote_sitting aj.id run scoreboard players operation @s aj.lysander.animation.emote_sitting.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.lysander.animation.quiz_result aj.id run function animated_java:lysander/zzzzzzzz/animations/quiz_result/apply_frame_as_root
execute if score #animation aj.i = $aj.lysander.animation.quiz_result aj.id run scoreboard players operation @s aj.lysander.animation.quiz_result.local_anim_time = #frame aj.i
execute at @s run function #animated_java:lysander/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i