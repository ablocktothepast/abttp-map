scoreboard players add @s aj.fiona.animation.idle_sitting.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.fiona.animation.idle_sitting.local_anim_time
function animated_java:fiona/zzzzzzzz/animations/idle_sitting/apply_frame_as_root
execute if score @s aj.fiona.animation.idle_sitting.local_anim_time matches 80.. run function animated_java:fiona/zzzzzzzz/animations/idle_sitting/end