scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.villager_link.animation.emote_sitting.local_anim_time 0
scoreboard players set @s aj.villager_link.animation.emote_sitting.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:villager_link/zzzzzzzz/animations/emote_sitting/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.villager_link.animation.emote_sitting