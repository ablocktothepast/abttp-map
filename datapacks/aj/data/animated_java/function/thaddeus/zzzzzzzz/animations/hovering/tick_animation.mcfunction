scoreboard players add @s aj.thaddeus.animation.hovering.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.thaddeus.animation.hovering.local_anim_time
function animated_java:thaddeus/zzzzzzzz/animations/hovering/apply_frame_as_root
execute if score @s aj.thaddeus.animation.hovering.local_anim_time matches 120.. run function animated_java:thaddeus/zzzzzzzz/animations/hovering/end