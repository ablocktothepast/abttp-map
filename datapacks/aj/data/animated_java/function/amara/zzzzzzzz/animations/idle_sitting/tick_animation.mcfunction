scoreboard players add @s aj.amara.animation.idle_sitting.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.amara.animation.idle_sitting.local_anim_time
function animated_java:amara/zzzzzzzz/animations/idle_sitting/apply_frame_as_root
execute if score @s aj.amara.animation.idle_sitting.local_anim_time matches 120.. run function animated_java:amara/zzzzzzzz/animations/idle_sitting/end