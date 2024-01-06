tp @s ^ ^ ^0.2

execute if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

execute unless score @s enemydummy3 matches -2147483648..2147483647 run scoreboard players set @s enemydummy3 0

execute if score @s enemydummy3 matches 0 positioned ^ ^ ^-0.5 rotated ~90 ~ if block ^ ^ ^1 #gothrough run tag @s add rotateright
execute unless block ^ ^ ^0.6 #gothrough run tag @s add rotateleft

execute if entity @s[tag=rotateright] run tp @s ~ ~ ~ ~90 ~
execute if entity @s[tag=rotateright] run scoreboard players set @s enemydummy3 10
execute if entity @s[tag=rotateright] if entity @s[tag=winder] run scoreboard players add @e[type=marker,tag=winder_m1] enemydummy2 90
execute if entity @s[tag=rotateright] if entity @s[tag=winder2] run scoreboard players add @e[type=marker,tag=winder_m2] enemydummy2 90
execute if entity @s[tag=rotateright] if entity @s[tag=winder3] run scoreboard players add @e[type=marker,tag=winder_m3] enemydummy2 90
execute if entity @s[tag=rotateright] if entity @s[tag=winder4] run scoreboard players add @e[type=marker,tag=winder_m4] enemydummy2 90
execute if entity @s[tag=rotateright] run tag @s remove rotateright

execute if entity @s[tag=rotateleft] run tp @s ~ ~ ~ ~-90 ~
execute if entity @s[tag=rotateleft] if entity @s[tag=winder] run scoreboard players remove @e[type=marker,tag=winder_m1] enemydummy2 90
execute if entity @s[tag=rotateleft] if entity @s[tag=winder2] run scoreboard players remove @e[type=marker,tag=winder_m2] enemydummy2 90
execute if entity @s[tag=rotateleft] if entity @s[tag=winder3] run scoreboard players remove @e[type=marker,tag=winder_m3] enemydummy2 90
execute if entity @s[tag=rotateleft] if entity @s[tag=winder4] run scoreboard players remove @e[type=marker,tag=winder_m4] enemydummy2 90
execute if entity @s[tag=rotateleft] run tag @s remove rotateleft

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

particle flame ~ ~0.25 ~ 0.6 0.75 0.6 0.05 6 force
particle dust 1.000 0.549 0.098 2 ~ ~ ~ 0.5 0.5 0.5 0.1 2 force