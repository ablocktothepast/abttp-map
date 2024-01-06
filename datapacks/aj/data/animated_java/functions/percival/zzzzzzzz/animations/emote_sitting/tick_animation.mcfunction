scoreboard players add @s aj.percival.animation.emote_sitting.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.percival.animation.emote_sitting.local_anim_time
function animated_java:percival/zzzzzzzz/animations/emote_sitting/apply_frame_as_root
execute if score @s aj.percival.animation.emote_sitting.local_anim_time matches 100.. run function animated_java:percival/zzzzzzzz/animations/emote_sitting/end