scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.uncle_alphon.animation.surprised.local_anim_time 0
scoreboard players set @s aj.uncle_alphon.animation.surprised.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:uncle_alphon/zzzzzzzz/animations/surprised/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.uncle_alphon.animation.surprised