scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.agatha.export_version
scoreboard objectives remove aj.agatha.rig_loaded
scoreboard objectives remove aj.agatha.animation.idle.local_anim_time
scoreboard objectives remove aj.agatha.animation.thank_you_thank_you.local_anim_time
scoreboard objectives remove aj.agatha.animation.idle.loop_mode
scoreboard objectives remove aj.agatha.animation.thank_you_thank_you.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The agatha Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]