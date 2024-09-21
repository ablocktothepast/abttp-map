scoreboard players add @s aj.villager_link.animation.walking.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.villager_link.animation.walking.local_anim_time
function animated_java:villager_link/zzzzzzzz/animations/walking/apply_frame_as_root
execute if score @s aj.villager_link.animation.walking.local_anim_time matches 20.. run function animated_java:villager_link/zzzzzzzz/animations/walking/end