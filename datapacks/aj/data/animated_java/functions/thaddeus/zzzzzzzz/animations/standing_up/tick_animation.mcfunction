scoreboard players add @s aj.thaddeus.animation.standing_up.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.thaddeus.animation.standing_up.local_anim_time
function animated_java:thaddeus/zzzzzzzz/animations/standing_up/apply_frame_as_root
execute if score @s aj.thaddeus.animation.standing_up.local_anim_time matches 50.. run function animated_java:thaddeus/zzzzzzzz/animations/standing_up/end