scoreboard players add @s aj.lysander.animation.quiz_result.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.lysander.animation.quiz_result.local_anim_time
function animated_java:lysander/zzzzzzzz/animations/quiz_result/apply_frame_as_root
execute if score @s aj.lysander.animation.quiz_result.local_anim_time matches 100.. run function animated_java:lysander/zzzzzzzz/animations/quiz_result/end