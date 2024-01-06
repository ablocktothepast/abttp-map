scoreboard players add @s aj.alden.animation.walking.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.alden.animation.walking.local_anim_time
function animated_java:alden/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score @s aj.alden.animation.walking.local_anim_time matches 20.. run function animated_java:alden/zzzzzzzz/animations/walking/end