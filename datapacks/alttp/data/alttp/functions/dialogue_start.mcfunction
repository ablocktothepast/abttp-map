# title @a times 3t 10t 3t
# title @a title ["","\uE006"]
scoreboard players set . crosshair 0
effect give @p resistance 10 255 true

##Third-person view (unless cutscene dialogue)
scoreboard players set letterIndex dialogue -1
function alttp:dialogue_ids
execute if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 run function alttp:dialogue_thirdperson
execute if score cutscene dialogue matches 1 run function alttp:dialogue_post_start
execute if score firstperson dialogue matches 1 run function alttp:dialogue_post_start

execute if score dlfov options matches 70 run effect give @p slowness infinite 1 true
execute if score dlfov options matches 85 run effect give @p slowness infinite 3 true
execute if score dlfov options matches 110 run effect give @p slowness infinite 5 true

bossbar add dialoguebars "\uE017"
bossbar set dialoguebars players @p
bossbar set dialoguebars visible true