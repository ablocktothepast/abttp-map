# title @a times 5t 8t 5t
# title @a title ["","\uE006"]

function alttp:dialogue_post_stop
function alttp:dialogue_post_post

kill @e[type=interaction,tag=dialogue_in]
kill @e[tag=dialogue_lock_aec]
kill @e[tag=dialogue_lock_minecart]

tag @e remove npcfocus

scoreboard players set active dialogue 0

effect clear @p invisibility
effect clear @p slowness

scoreboard players set angle dialogue 0

execute if score id dialogue matches 401..404 if score # gameplay matches ..13 as @e[type=item_display,tag=erin] run function animated_java:erin/animations/idle/stop
execute if score id dialogue matches 401..404 if score # gameplay matches ..13 as @e[type=item_display,tag=erin] run function animated_java:erin/animations/running/play

bossbar set dialoguecontrols visible false