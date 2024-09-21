scoreboard players add @s aj.tristan.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tristan.animation.idle.local_anim_time
function animated_java:tristan/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.tristan.animation.idle.local_anim_time matches 120.. run function animated_java:tristan/zzzzzzzz/animations/idle/end