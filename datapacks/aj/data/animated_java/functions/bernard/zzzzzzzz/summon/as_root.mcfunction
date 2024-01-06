execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.bernard.rig_loaded 1
scoreboard players operation @s aj.bernard.export_version = aj.bernard.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:bernard/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.bernard.variant.default aj.id run function animated_java:bernard/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.bernard.animation.idle aj.id run function animated_java:bernard/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.bernard.animation.idle aj.id run scoreboard players operation @s aj.bernard.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.bernard.animation.running aj.id run function animated_java:bernard/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #animation aj.i = $aj.bernard.animation.running aj.id run scoreboard players operation @s aj.bernard.animation.running.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.bernard.animation.emote aj.id run function animated_java:bernard/zzzzzzzz/animations/emote/apply_frame_as_root
execute if score #animation aj.i = $aj.bernard.animation.emote aj.id run scoreboard players operation @s aj.bernard.animation.emote.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.bernard.animation.departure aj.id run function animated_java:bernard/zzzzzzzz/animations/departure/apply_frame_as_root
execute if score #animation aj.i = $aj.bernard.animation.departure aj.id run scoreboard players operation @s aj.bernard.animation.departure.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.bernard.animation.hiding aj.id run function animated_java:bernard/zzzzzzzz/animations/hiding/apply_frame_as_root
execute if score #animation aj.i = $aj.bernard.animation.hiding aj.id run scoreboard players operation @s aj.bernard.animation.hiding.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.bernard.animation.was_found aj.id run function animated_java:bernard/zzzzzzzz/animations/was_found/apply_frame_as_root
execute if score #animation aj.i = $aj.bernard.animation.was_found aj.id run scoreboard players operation @s aj.bernard.animation.was_found.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.bernard.animation.frienship aj.id run function animated_java:bernard/zzzzzzzz/animations/frienship/apply_frame_as_root
execute if score #animation aj.i = $aj.bernard.animation.frienship aj.id run scoreboard players operation @s aj.bernard.animation.frienship.local_anim_time = #frame aj.i
execute at @s run function #animated_java:bernard/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i