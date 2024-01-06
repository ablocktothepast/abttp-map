scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.lysander.animation.walking.local_anim_time 0
scoreboard players set @s aj.lysander.animation.walking.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:lysander/zzzzzzzz/animations/walking/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.lysander.animation.walking