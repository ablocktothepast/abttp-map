scoreboard players add @s aj.percival.animation.walking.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.percival.animation.walking.local_anim_time
function animated_java:percival/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score @s aj.percival.animation.walking.local_anim_time matches 20.. run function animated_java:percival/zzzzzzzz/animations/walking/end