execute if entity @s[tag=!open,tag=!locked] run tag @s add init

execute if entity @s[tag=!hard] run function alttp:doormarker/1

execute if entity @s[tag=hard] store result storage test door int 1 run data get entity @s data.id
execute if entity @s[tag=hard] run function alttp:doormarkermacro with storage test

tag @s remove scheduled