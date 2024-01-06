scoreboard players add @s aj.uncle_alphon.animation.idle_grin.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.uncle_alphon.animation.idle_grin.local_anim_time
function animated_java:uncle_alphon/zzzzzzzz/animations/idle_grin/apply_frame_as_root
execute if score @s aj.uncle_alphon.animation.idle_grin.local_anim_time matches 120.. run function animated_java:uncle_alphon/zzzzzzzz/animations/idle_grin/end