scoreboard players remove @s dummy 10

execute if score @s dummy matches ..-1 store result entity @s Pose.Head[0] float 1 run scoreboard players get @s dummy
execute if score @s dummy matches ..-1 run tp @s ^ ^-0.2 ^-0.2
execute if score @s dummy matches ..-90 run kill @s