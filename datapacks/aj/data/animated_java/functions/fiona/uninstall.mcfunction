scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.fiona.export_version
scoreboard objectives remove aj.fiona.rig_loaded
scoreboard objectives remove aj.fiona.animation.idle.local_anim_time
scoreboard objectives remove aj.fiona.animation.walking.local_anim_time
scoreboard objectives remove aj.fiona.animation.running.local_anim_time
scoreboard objectives remove aj.fiona.animation.idle_sitting.local_anim_time
scoreboard objectives remove aj.fiona.animation.emote.local_anim_time
scoreboard objectives remove aj.fiona.animation.idle.loop_mode
scoreboard objectives remove aj.fiona.animation.walking.loop_mode
scoreboard objectives remove aj.fiona.animation.running.loop_mode
scoreboard objectives remove aj.fiona.animation.idle_sitting.loop_mode
scoreboard objectives remove aj.fiona.animation.emote.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The fiona Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]