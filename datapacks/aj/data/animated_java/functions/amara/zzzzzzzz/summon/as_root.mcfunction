execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.amara.rig_loaded 1
scoreboard players operation @s aj.amara.export_version = aj.amara.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:amara/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.amara.variant.amara_normal_face aj.id run function animated_java:amara/zzzzzzzz/apply_variant/amara_normal_face/as_root
execute if score #variant aj.i = $aj.amara.variant.amara_blush aj.id run function animated_java:amara/zzzzzzzz/apply_variant/amara_blush/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.amara.animation.idle aj.id run function animated_java:amara/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.amara.animation.idle aj.id run scoreboard players operation @s aj.amara.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.amara.animation.running aj.id run function animated_java:amara/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.amara.animation.running aj.id run scoreboard players operation @s aj.amara.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.amara.animation.shrug aj.id run function animated_java:amara/zzzzzzzz/animations/shrug/apply_frame_as_root
execute if score #animation aj.i = $aj.amara.animation.shrug aj.id run scoreboard players operation @s aj.amara.animation.shrug.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.amara.animation.idle_sitting aj.id run function animated_java:amara/zzzzzzzz/animations/idle_sitting/apply_frame_as_root
execute if score #animation aj.i = $aj.amara.animation.idle_sitting aj.id run scoreboard players operation @s aj.amara.animation.idle_sitting.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.amara.animation.emote aj.id run function animated_java:amara/zzzzzzzz/animations/emote/apply_frame_as_root
execute if score #animation aj.i = $aj.amara.animation.emote aj.id run scoreboard players operation @s aj.amara.animation.emote.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.amara.animation.clap aj.id run function animated_java:amara/zzzzzzzz/animations/clap/apply_frame_as_root
execute if score #animation aj.i = $aj.amara.animation.clap aj.id run scoreboard players operation @s aj.amara.animation.clap.local_anim_time = #frame aj.i
execute at @s run function #animated_java:amara/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i