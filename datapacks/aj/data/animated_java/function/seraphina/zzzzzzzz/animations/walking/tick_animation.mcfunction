scoreboard players add @s aj.seraphina.animation.walking.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.seraphina.animation.walking.local_anim_time
function animated_java:seraphina/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score @s aj.seraphina.animation.walking.local_anim_time matches 20.. run function animated_java:seraphina/zzzzzzzz/animations/walking/end