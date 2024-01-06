scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.neal.animation.frienship.local_anim_time 0
scoreboard players set @s aj.neal.animation.frienship.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:neal/zzzzzzzz/animations/frienship/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.neal.animation.frienship