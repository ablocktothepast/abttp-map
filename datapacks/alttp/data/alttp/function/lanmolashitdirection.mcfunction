execute store result score mydir dummy run data get entity @s Rotation[0]
execute store result score playerdir dummy run data get entity @p Rotation[0]

# Absolute difference between two rotations calculation

execute store result score calcdiff dummy run scoreboard players get mydir dummy

scoreboard players operation calcdiff dummy -= playerdir dummy
scoreboard players set -1 dummy -1
execute if score calcdiff dummy matches ..0 run scoreboard players operation calcdiff dummy *= -1 dummy

# Larger than 180, increase smallest value by 180 first!

execute if score calcdiff dummy matches ..180 if score mydir dummy < playerdir dummy run scoreboard players set changedir dummy 1
execute if score calcdiff dummy matches ..180 if score mydir dummy > playerdir dummy run scoreboard players set changedir dummy 2

execute if score calcdiff dummy matches ..180 if score changedir dummy matches 1 run scoreboard players add mydir dummy 180
execute if score calcdiff dummy matches ..180 if score changedir dummy matches 2 run scoreboard players add playerdir dummy 180

# Go right ahead!

execute if score mydir dummy < playerdir dummy run scoreboard players set dodir dummy -1
execute if score mydir dummy > playerdir dummy run scoreboard players set dodir dummy 1

execute if score dodir dummy matches 1 run tp @s ~ ~ ~ ~20 0
execute if score dodir dummy matches 1 run summon marker ~ ~ ~ {Tags:["lmhit","enemy","1"]}

execute if score dodir dummy matches -1 run tp @s ~ ~ ~ ~-20 0
execute if score dodir dummy matches -1 run summon marker ~ ~ ~ {Tags:["lmhit","enemy","-1"]}