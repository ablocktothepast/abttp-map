scoreboard players add @s aj.amara.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.amara.animation.idle.local_anim_time
function animated_java:amara/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.amara.animation.idle.local_anim_time matches 64.. run function animated_java:amara/zzzzzzzz/animations/idle/end