execute unless score @s aj.background_picture_with_camera.rig_loaded = @s aj.background_picture_with_camera.rig_loaded run function animated_java:background_picture_with_camera/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:background_picture_with_camera/zzzzzzzz/animations/tick
function #animated_java:background_picture_with_camera/on_tick/as_root