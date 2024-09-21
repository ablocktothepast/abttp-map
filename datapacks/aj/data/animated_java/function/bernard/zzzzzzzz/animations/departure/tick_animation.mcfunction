scoreboard players add @s aj.bernard.animation.departure.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bernard.animation.departure.local_anim_time
function animated_java:bernard/zzzzzzzz/animations/departure/apply_frame_as_root
execute if score @s aj.bernard.animation.departure.local_anim_time matches 64.. run function animated_java:bernard/zzzzzzzz/animations/departure/end