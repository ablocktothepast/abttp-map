scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.background_picture_with_camera.animation.animation.local_anim_time 0
scoreboard players set @s aj.background_picture_with_camera.animation.animation.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:background_picture_with_camera/zzzzzzzz/animations/animation/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.background_picture_with_camera.animation.animation