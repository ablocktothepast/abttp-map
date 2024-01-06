scoreboard players add @s aj.bertram.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bertram.animation.idle.local_anim_time
function animated_java:bertram/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.bertram.animation.idle.local_anim_time matches 80.. run function animated_java:bertram/zzzzzzzz/animations/idle/end