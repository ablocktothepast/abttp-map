scoreboard players add @s aj.elisabeth.animation.running.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.elisabeth.animation.running.local_anim_time
function animated_java:elisabeth/zzzzzzzz/animations/running/apply_frame_as_root
execute if score @s aj.elisabeth.animation.running.local_anim_time matches 48.. run function animated_java:elisabeth/zzzzzzzz/animations/running/end