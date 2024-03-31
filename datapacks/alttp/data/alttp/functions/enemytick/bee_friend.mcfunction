data remove entity @s AngryAt
data merge entity @s {AngerTime:-1}

execute unless entity @e[type=!bee,tag=!bee_friend,tag=!golden_bee_friend,tag=enemy] run kill @s

execute at @s facing entity @e[type=!bee,tag=!bee_friend,tag=!golden_bee_friend,tag=enemy,limit=1,sort=nearest] eyes if block ^ ^ ^0.4 #gothrough run tp @s ^ ^ ^0.1 ~ ~

execute at @s unless score @s dummy matches 1.. if entity @e[type=!bee,tag=!bee_friend,tag=!golden_bee_friend,tag=enemy,distance=..1.5] as @e[type=!bee,tag=!bee_friend,tag=enemy,limit=1,sort=nearest,distance=0.1..,type=!armor_stand,type=!item_display] run damage @s 5
execute at @s unless score @s dummy matches 1.. if entity @e[type=!bee,tag=!bee_friend,tag=!golden_bee_friend,tag=enemy,distance=..1.5] run playsound entity.bee.sting weather @p ~ ~ ~ 1 1
execute at @s unless score @s dummy matches 1.. if entity @e[type=!bee,tag=!bee_friend,tag=!golden_bee_friend,tag=enemy,distance=..1.5] run damage @s 1
execute at @s unless score @s dummy matches 1.. if entity @e[type=!bee,tag=!bee_friend,tag=!golden_bee_friend,tag=enemy,distance=..1.5] run particle explosion ~ ~ ~
execute at @s unless score @s dummy matches 1.. if entity @e[type=!bee,tag=!bee_friend,tag=!golden_bee_friend,tag=enemy,distance=..1.5] run scoreboard players set @s dummy 30

execute if score @s dummy matches 1.. run scoreboard players remove @s dummy 1