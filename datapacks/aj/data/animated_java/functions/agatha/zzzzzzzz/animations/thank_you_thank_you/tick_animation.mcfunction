scoreboard players add @s aj.agatha.animation.thank_you_thank_you.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.agatha.animation.thank_you_thank_you.local_anim_time
function animated_java:agatha/zzzzzzzz/animations/thank_you_thank_you/apply_frame_as_root
execute if score @s aj.agatha.animation.thank_you_thank_you.local_anim_time matches 60.. run function animated_java:agatha/zzzzzzzz/animations/thank_you_thank_you/end