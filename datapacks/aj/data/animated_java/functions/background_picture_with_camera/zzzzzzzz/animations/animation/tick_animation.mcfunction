scoreboard players add @s aj.background_picture_with_camera.animation.animation.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.background_picture_with_camera.animation.animation.local_anim_time
function animated_java:background_picture_with_camera/zzzzzzzz/animations/animation/apply_frame_as_root
execute if score @s aj.background_picture_with_camera.animation.animation.local_anim_time matches 20.. run function animated_java:background_picture_with_camera/zzzzzzzz/animations/animation/end