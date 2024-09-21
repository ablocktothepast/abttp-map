scoreboard players add @s aj.melissa.animation.offended.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.melissa.animation.offended.local_anim_time
function animated_java:melissa/zzzzzzzz/animations/offended/apply_frame_as_root
execute if score @s aj.melissa.animation.offended.local_anim_time matches 80.. run function animated_java:melissa/zzzzzzzz/animations/offended/end