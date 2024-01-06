execute if entity @e[type=marker,tag=unclemove] as @e[type=item_display,tag=unclestart] at @s facing entity @e[type=marker,tag=unclemove,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.16 ~-90 0
# execute if entity @e[type=marker,tag=unclemove] as @e[type=item_display,tag=unclestart] at @s run tp @s @e[type=marker,tag=unclemove,limit=1,sort=nearest,distance=..0.17]
execute if entity @e[type=marker,tag=unclemove] as @e[type=item_display,tag=unclestart] at @s if entity @e[type=marker,tag=unclemove,tag=end,distance=..0.17] run scoreboard players set unclewalkedout gameplay 1
execute if entity @e[type=marker,tag=unclemove] as @e[type=item_display,tag=unclestart] at @s if entity @e[type=marker,tag=unclemove,tag=end,distance=..0.17] run tp @s -309 -2 609 43 0
execute if entity @e[type=marker,tag=unclemove] as @e[type=item_display,tag=unclestart] at @s run kill @e[type=marker,tag=unclemove,limit=1,sort=nearest,distance=..0.17]
execute if score unclewalkedout gameplay matches 1 run kill @e[tag=unclemove]
execute if score unclewalkedout gameplay matches 1 run fill -318 -5 590 -319 -5 590 air
execute if score unclewalkedout gameplay matches 1 run fill -318 -5 590 -319 -5 590 air

execute store result score time dummy run time query daytime
execute if score time dummy matches ..10000 run time add 3t

execute if score dialoguetransition2 dummy matches 0 unless score unclewalkedout gameplay matches 1 as @e[type=marker,tag=unclelock] at @s if entity @e[type=item_display,tag=unclestart,distance=..6] facing entity @e[type=item_display,tag=unclestart] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if score dialoguetransition2 dummy matches 0 unless score unclewalkedout gameplay matches 1 run tp @p @e[type=marker,tag=unclelock,limit=1]

##Town cutscene
execute if score townscene gameplay matches 1.. run scoreboard players add townscene gameplay 1
execute if score townscene gameplay matches 3..540 run effect give @p slowness infinite 6 true
execute if score townscene gameplay matches 3..540 run effect give @e[type=villager,tag=townscene] slowness infinite 6 true
execute if score townscene gameplay matches 2..540 run gamemode spectator @p

execute if score townscene gameplay matches 2 run kill @e[type=villager,tag=townscene]

execute if score townscene gameplay matches 2 run summon villager -246.62 6.05 594.58 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["townscene4","townscene"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:99999,show_particles:0b}],Rotation:[-3027.97F,22.15F]}

execute if score townscene gameplay matches 2..100 run tp @p -259.76 6.49 654.31 -2321.87 -5.75
execute if score townscene gameplay matches 101..200 run tp @p -399.27 -11.15 726.25 -2311.67 1.75
execute if score townscene gameplay matches 201..300 run tp @p -287.63 -9.22 634.15 -2499.17 0.40
execute if score townscene gameplay matches 301..400 positioned -246.62 1.05 594.58 rotated as @e[type=villager,tag=townscene4,limit=1] run tp @p ~ ~ ~ ~ ~
execute if score townscene gameplay matches 301..310 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.05 ~
execute if score townscene gameplay matches 311..320 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.1 ~
execute if score townscene gameplay matches 321..330 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.2 ~
execute if score townscene gameplay matches 331..340 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.4 ~
execute if score townscene gameplay matches 341..350 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.6 ~
execute if score townscene gameplay matches 351..360 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.6 ~
execute if score townscene gameplay matches 361..370 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.4 ~
execute if score townscene gameplay matches 371..380 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.2 ~
execute if score townscene gameplay matches 381..390 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.1 ~
execute if score townscene gameplay matches 391..400 as @e[type=villager,tag=townscene4] at @s run tp @s ~ ~ ~ ~0.05 ~
execute if score townscene gameplay matches 401..500 run tp @p -371.57 13.67 626.70 -287.09 -17.9
execute if score townscene gameplay matches 480 run title @p times 2s 2s 2s
execute if score townscene gameplay matches 480 run title @p title "\uE006"
execute if score townscene gameplay matches 480 run tag @p add exterior
execute if score townscene gameplay matches 480 run tag @p remove interior
execute if score townscene gameplay matches 540 run gamemode adventure @p
execute if score townscene gameplay matches 540 run tp @p -318.0 -3 591.5 -12 1
execute if score townscene gameplay matches 540 run kill @e[type=villager,tag=townscene]
execute if score townscene gameplay matches 540 run effect clear @p slowness
execute if score townscene gameplay matches 540 run bossbar set blackbars visible false
execute if score townscene gameplay matches 600 run title @p times 2s 5s 2s
execute if score townscene gameplay matches 600 run title @a title ["",{"text":"🍂 ","color":"gold"},{"text":"Oakheart Village","color":"dark_green"},{"text":" 🍁","color":"gold"}]
execute if score townscene gameplay matches 600 run title @a subtitle "Chapter 0"
execute if score townscene gameplay matches 600.. run scoreboard players set townscene gameplay 0