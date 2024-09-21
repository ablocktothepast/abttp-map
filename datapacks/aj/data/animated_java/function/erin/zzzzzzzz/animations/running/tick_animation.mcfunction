scoreboard players add @s aj.erin.animation.running.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.erin.animation.running.local_anim_time
function animated_java:erin/zzzzzzzz/animations/running/apply_frame_as_root
execute if score @s aj.erin.animation.running.local_anim_time matches 28.. run function animated_java:erin/zzzzzzzz/animations/running/end