scoreboard players add @s aj.villager_link.animation.surprised.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.villager_link.animation.surprised.local_anim_time
function animated_java:villager_link/zzzzzzzz/animations/surprised/apply_frame_as_root
execute if score @s aj.villager_link.animation.surprised.local_anim_time matches 70.. run function animated_java:villager_link/zzzzzzzz/animations/surprised/end