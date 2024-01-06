scoreboard players add @s aj.percival.animation.idle_sitting_grin.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.percival.animation.idle_sitting_grin.local_anim_time
function animated_java:percival/zzzzzzzz/animations/idle_sitting_grin/apply_frame_as_root
execute if score @s aj.percival.animation.idle_sitting_grin.local_anim_time matches 120.. run function animated_java:percival/zzzzzzzz/animations/idle_sitting_grin/end