function animated_java:erin/zzzzzzzz/animations/running/resume_as_root
function animated_java:erin/zzzzzzzz/animations/running/tween_as_root
function animated_java:erin/zzzzzzzz/animations/running/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i