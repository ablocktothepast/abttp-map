scoreboard players add @s aj.elowen.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.elowen.animation.idle.local_anim_time
function animated_java:elowen/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.elowen.animation.idle.local_anim_time matches 240.. run function animated_java:elowen/zzzzzzzz/animations/idle/end