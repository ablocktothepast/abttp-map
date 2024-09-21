scoreboard players add @s aj.elisabeth.animation.frienship.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.elisabeth.animation.frienship.local_anim_time
function animated_java:elisabeth/zzzzzzzz/animations/frienship/apply_frame_as_root
execute if score @s aj.elisabeth.animation.frienship.local_anim_time matches 65.. run function animated_java:elisabeth/zzzzzzzz/animations/frienship/end