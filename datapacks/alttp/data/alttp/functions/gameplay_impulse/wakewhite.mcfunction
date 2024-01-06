scoreboard players set wakewhite gameplay 1
title @p times 6s 50t 1s
title @p title "\uE015"

bossbar add blackbars "\uE016"
bossbar set blackbars players @p
bossbar set blackbars visible true

execute as @p at @s run playsound minecraft:alttp.noise_birds_fadein_opening weather @p
schedule function alttp:ambience/oakheart_interior 100t