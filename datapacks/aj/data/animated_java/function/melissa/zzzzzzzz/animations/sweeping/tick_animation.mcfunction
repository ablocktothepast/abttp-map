scoreboard players add @s aj.melissa.animation.sweeping.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.melissa.animation.sweeping.local_anim_time
function animated_java:melissa/zzzzzzzz/animations/sweeping/apply_frame_as_root
execute if score @s aj.melissa.animation.sweeping.local_anim_time matches 140.. run function animated_java:melissa/zzzzzzzz/animations/sweeping/end