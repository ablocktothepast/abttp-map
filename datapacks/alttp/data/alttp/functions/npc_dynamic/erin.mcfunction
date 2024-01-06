execute at @e[tag=erin] facing entity @e[type=item_display,tag=aj.villager_link.root] eyes run tp @e[tag=erin] ~ ~ ~ ~ 0

execute if score id dialogue matches 401..404 if score # gameplay matches ..13 if score active dialogue matches 1 run return 0
execute if score id dialogue matches 401..404 if score # gameplay matches ..13 if score dialoguetransitiontick dummy matches 1.. run return 0

execute as @e[type=marker,tag=erin_marker] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[type=marker,tag=erin_marker] at @s run tp @e[type=item_display,tag=erin] ^ ^ ^3 ~90 0
execute as @e[type=marker,tag=erin_marker] at @s run tp @e[type=marker,tag=interact,nbt={data:{id:34}}] ^ ^ ^3 ~90 0