execute if score @s aj.amara.animation.emote.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:amara/zzzzzzzz/animations/emote/end_loop
execute if score @s aj.amara.animation.emote.loop_mode = $aj.loop_mode.once aj.i run function animated_java:amara/animations/emote/stop
execute if score @s aj.amara.animation.emote.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:amara/animations/emote/pause