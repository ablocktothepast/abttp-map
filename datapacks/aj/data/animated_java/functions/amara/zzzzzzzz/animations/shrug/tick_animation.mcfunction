scoreboard players add @s aj.amara.animation.shrug.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.amara.animation.shrug.local_anim_time
function animated_java:amara/zzzzzzzz/animations/shrug/apply_frame_as_root
execute if score @s aj.amara.animation.shrug.local_anim_time matches 50.. run function animated_java:amara/zzzzzzzz/animations/shrug/end