function animated_java:uncle_alphon/zzzzzzzz/animations/idle_grin/play_as_root
function animated_java:uncle_alphon/zzzzzzzz/animations/idle_grin/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i