execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.thaddeus.rig_loaded 1
scoreboard players operation @s aj.thaddeus.export_version = aj.thaddeus.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:thaddeus/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.thaddeus.variant.default aj.id run function animated_java:thaddeus/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.thaddeus.animation.idle aj.id run function animated_java:thaddeus/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.thaddeus.animation.idle aj.id run scoreboard players operation @s aj.thaddeus.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.thaddeus.animation.walking aj.id run function animated_java:thaddeus/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score #animation aj.i = $aj.thaddeus.animation.walking aj.id run scoreboard players operation @s aj.thaddeus.animation.walking.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.thaddeus.animation.running aj.id run function animated_java:thaddeus/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.thaddeus.animation.running aj.id run scoreboard players operation @s aj.thaddeus.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.thaddeus.animation.surprised aj.id run function animated_java:thaddeus/zzzzzzzz/animations/surprised/apply_frame_as_root
execute if score #animation aj.i = $aj.thaddeus.animation.surprised aj.id run scoreboard players operation @s aj.thaddeus.animation.surprised.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.thaddeus.animation.hovering aj.id run function animated_java:thaddeus/zzzzzzzz/animations/hovering/apply_frame_as_root
execute if score #animation aj.i = $aj.thaddeus.animation.hovering aj.id run scoreboard players operation @s aj.thaddeus.animation.hovering.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.thaddeus.animation.standing_up aj.id run function animated_java:thaddeus/zzzzzzzz/animations/standing_up/apply_frame_as_root
execute if score #animation aj.i = $aj.thaddeus.animation.standing_up aj.id run scoreboard players operation @s aj.thaddeus.animation.standing_up.local_anim_time = #frame aj.i
execute at @s run function #animated_java:thaddeus/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i