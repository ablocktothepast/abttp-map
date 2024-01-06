tp @s ^ ^ ^0.3
scoreboard players add @s dummy 1
# particle flame ~ ~ ~
execute if score tphit dummy matches 0 as @e[type=#enemies,tag=!thirdperson_player,tag=!tphit,distance=..2.5,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function alttp:thirdperson/sword_hit
execute if score tphit dummy matches 1 run return 0
execute unless score @s dummy matches 10.. at @s run function alttp:thirdperson/sword_raycast