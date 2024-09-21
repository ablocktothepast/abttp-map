scoreboard players add @s aj.uncle_alphon.animation.apple_basket.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.uncle_alphon.animation.apple_basket.local_anim_time
function animated_java:uncle_alphon/zzzzzzzz/animations/apple_basket/apply_frame_as_root
execute if score @s aj.uncle_alphon.animation.apple_basket.local_anim_time matches 64.. run function animated_java:uncle_alphon/zzzzzzzz/animations/apple_basket/end