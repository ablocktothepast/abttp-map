scoreboard players add @s aj.bernard.animation.hiding.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bernard.animation.hiding.local_anim_time
function animated_java:bernard/zzzzzzzz/animations/hiding/apply_frame_as_root
execute if score @s aj.bernard.animation.hiding.local_anim_time matches 150.. run function animated_java:bernard/zzzzzzzz/animations/hiding/end