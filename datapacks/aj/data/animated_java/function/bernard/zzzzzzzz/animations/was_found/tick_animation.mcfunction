scoreboard players add @s aj.bernard.animation.was_found.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bernard.animation.was_found.local_anim_time
function animated_java:bernard/zzzzzzzz/animations/was_found/apply_frame_as_root
execute if score @s aj.bernard.animation.was_found.local_anim_time matches 60.. run function animated_java:bernard/zzzzzzzz/animations/was_found/end