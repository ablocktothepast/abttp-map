bossbar add drowning ""
bossbar set drowning color blue
execute store result bossbar drowning max run scoreboard players get @s flippers
execute store result bossbar drowning value run scoreboard players get @s drowning
bossbar set drowning players @p
bossbar set drowning visible true
scoreboard players set drownbar dummy 40
execute if score @s drowning matches ..0 run function alttp:drown