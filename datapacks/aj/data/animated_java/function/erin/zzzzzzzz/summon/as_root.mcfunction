execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.erin.rig_loaded 1
scoreboard players operation @s aj.erin.export_version = aj.erin.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:erin/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.erin.variant.erin_face_normal aj.id run function animated_java:erin/zzzzzzzz/apply_variant/erin_face_normal/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.erin.animation.running aj.id run function animated_java:erin/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.erin.animation.running aj.id run scoreboard players operation @s aj.erin.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.erin.animation.idle aj.id run function animated_java:erin/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.erin.animation.idle aj.id run scoreboard players operation @s aj.erin.animation.idle.local_anim_time = #frame aj.i
execute at @s run function #animated_java:erin/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i