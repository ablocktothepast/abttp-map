scoreboard players add @s dummy 1

execute if score @s dummy matches 1..3 run tp @s ~ ~0.002 ~
execute if score @s dummy matches 4..6 run tp @s ~ ~0.005 ~
execute if score @s dummy matches 7..9 run tp @s ~ ~0.01 ~
execute if score @s dummy matches 10..12 run tp @s ~ ~0.015 ~
execute if score @s dummy matches 13..15 run tp @s ~ ~0.01 ~
execute if score @s dummy matches 16..18 run tp @s ~ ~0.005 ~
execute if score @s dummy matches 19..21 run tp @s ~ ~0.002 ~

execute if score @s dummy matches 22..24 run tp @s ~ ~-0.002 ~
execute if score @s dummy matches 25..27 run tp @s ~ ~-0.005 ~
execute if score @s dummy matches 28..30 run tp @s ~ ~-0.01 ~
execute if score @s dummy matches 31..33 run tp @s ~ ~-0.015 ~
execute if score @s dummy matches 34..36 run tp @s ~ ~-0.01 ~
execute if score @s dummy matches 37..39 run tp @s ~ ~-0.005 ~
execute if score @s dummy matches 40..42 run tp @s ~ ~-0.002 ~

execute if score @s dummy matches 42.. run scoreboard players set @s dummy 0