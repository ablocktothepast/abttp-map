execute positioned -302 -20 654 if entity @p[distance=..2] run scoreboard players set navblindness gameplay 1
execute positioned -255 -16 642 if entity @p[distance=..2] run scoreboard players set navblindness gameplay 1
execute positioned -310 -14 646 if entity @p[distance=..2] run scoreboard players set navblindness gameplay 0
execute positioned -255 -11 638 if entity @p[distance=..2] run scoreboard players set navblindness gameplay 0

execute positioned -302 -20 654 if entity @p[distance=..2] if score melissa_guide gameplay matches 2 run tp @e[tag=melissa] -294 -9 637 -103 0
execute positioned -302 -20 654 if entity @p[distance=..2] if score melissa_guide gameplay matches 2 run scoreboard players set melissa_guide gameplay 0

execute if score navblindness gameplay matches 0 run effect clear @p blindness
execute if score @p lamp_state matches 1 run effect clear @p blindness
execute if score navblindness gameplay matches 1 unless score @p lamp_state matches 1 run effect give @p blindness infinite 255 true

execute if score melissamove gameplay matches 1..2 as @e[type=item_display,tag=melissa] at @s facing entity @e[type=marker,tag=melissamove,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.06
execute if score melissamove gameplay matches 1..2 at @e[type=item_display,tag=melissa] as @e[type=marker,tag=melissamove,limit=1,sort=nearest] if entity @s[tag=!stair] as @e[type=item_display,tag=melissa] at @s facing entity @e[type=marker,tag=melissamove,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.1
execute if score melissamove gameplay matches 1..2 as @e[type=item_display,tag=melissa] at @s if entity @e[type=marker,tag=melissamove,tag=end,distance=..0.17] run tp @s -307.554 -14 641.564 27 0
execute if score melissamove gameplay matches 1..2 as @e[type=item_display,tag=melissa] at @s if entity @e[type=marker,tag=melissamove,tag=end,distance=..0.17] run scoreboard players set melissamove gameplay 1
execute if score melissamove gameplay matches 1..2 as @e[type=item_display,tag=melissa] at @s run kill @e[type=marker,tag=melissamove,limit=1,sort=nearest,distance=..0.17]
execute if score melissamove gameplay matches 1 run setblock -302 -10 636 minecraft:spruce_fence_gate[facing=south,open=false]
execute if score melissamove gameplay matches 1 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/walking/stop
execute if score melissamove gameplay matches 1 run function alttp:ajsummon/melissa_chance
execute if score melissamove gameplay matches 1 run scoreboard players set melissa_guide gameplay 2
execute if score melissamove gameplay matches 1 run scoreboard players set melissamove gameplay 0

execute if score melissamove gameplay matches 1..2 as @e[type=item_display,tag=melissa] at @s anchored eyes facing entity @e[type=marker,tag=melissamove,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score melissamove gameplay matches 1..2 as @e[type=item_display,tag=melissa] at @s anchored eyes facing entity @e[type=marker,tag=melissamove,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score thaddeusmove gameplay matches 1..2 as @e[tag=thaddeus] at @s facing entity @e[type=marker,tag=thaddeusmove,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.25
execute if score thaddeusmove gameplay matches 1..2 as @e[tag=thaddeus] at @s if entity @e[type=marker,tag=thaddeusmove,tag=end,distance=..0.21] run tp @s -401 -11 711 42 0
execute if score thaddeusmove gameplay matches 1..2 as @e[tag=thaddeus] at @s if entity @e[type=marker,tag=thaddeusmove,tag=end,distance=..0.21] run scoreboard players set thaddeusmove gameplay 1
execute if score thaddeusmove gameplay matches 1..2 as @e[tag=thaddeus] at @s run kill @e[type=marker,tag=thaddeusmove,limit=1,sort=nearest,distance=..0.17]

execute if score thaddeusmove gameplay matches 1..2 as @e[tag=thaddeus] at @s anchored eyes facing entity @e[type=marker,tag=thaddeusmove,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score thaddeusmove gameplay matches 1..2 as @e[tag=thaddeus] at @s anchored eyes facing entity @e[type=marker,tag=thaddeusmove,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score thaddeusmove gameplay matches 1 run setblock -405 -10 680 air
execute if score thaddeusmove gameplay matches 1 run scoreboard players set 4 quests_2_progress 3
execute if score thaddeusmove gameplay matches 1 as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/running/stop
execute if score thaddeusmove gameplay matches 1 as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/idle/play
execute if score thaddeusmove gameplay matches 1 run bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A test of agility","color":"gold","bold":true},{"text":" ⟞⟝"}]
execute if score thaddeusmove gameplay matches 1 run function alttp:questupdateshow
execute if score thaddeusmove gameplay matches 1 run schedule function alttp:questupdatehide 5s
execute if score thaddeusmove gameplay matches 1 run scoreboard players set thaddeusmove gameplay 0

execute if score racetime gameplay matches -100.. run scoreboard players add racetime gameplay 1
execute if score racetime gameplay matches -100.. run scoreboard players set . crosshair 0
execute if score active dialogue matches 0 if score racetime gameplay matches -100..0 run tp @p -404 -11 711 170 0
execute if score racetime gameplay matches -60 run title @p title {"text":"3","color":"red"}
execute if score racetime gameplay matches -40 run title @p title {"text":"2","color":"gold"}
execute if score racetime gameplay matches -20 run title @p title {"text":"1","color":"yellow"}
execute if score racetime gameplay matches 0 run title @p title {"text":"START","color":"green"}
execute if score racetime gameplay matches 0 run bossbar add racetime "Time"
execute if score racetime gameplay matches 0 run bossbar set racetime max 1
execute if score racetime gameplay matches 0 run bossbar set racetime value 1
execute if score racetime gameplay matches 0 run bossbar set racetime players @p
execute if score racetime gameplay matches 0 run bossbar set racetime visible true
execute if score racetime gameplay matches 0 run scoreboard players set 20 math 20
execute if score racetime gameplay matches 0 run title @p title {"text":"START","color":"green"}
execute if score racetime gameplay matches 1.. store result score racetime math run scoreboard players get racetime gameplay
execute if score racetime gameplay matches 1.. store result storage test racetime int 1 run scoreboard players operation racetime math /= 20 math
execute if score racetime gameplay matches 1.. run function alttp:racetimedisplay_macro with storage test
execute if score racetime gameplay matches 1.. positioned -375 -7 676 if entity @p[distance=..2] if score racecp1 gameplay matches 0 run function alttp:gameplay_impulse/thaddeus_race_checkpoint1
execute if score racetime gameplay matches 1.. positioned -271 -9 630 if entity @p[distance=..2] if score racecp1 gameplay matches 1 if score racecp2 gameplay matches 0 run function alttp:gameplay_impulse/thaddeus_race_checkpoint2
execute if score racetime gameplay matches 1.. positioned -318 -4 596 if entity @p[distance=..2] if score racecp2 gameplay matches 1 if score racecp3 gameplay matches 0 run function alttp:gameplay_impulse/thaddeus_race_checkpoint3
execute if score racetime gameplay matches 1.. positioned -315 -2 609 if entity @p[distance=..2] if score racecp3 gameplay matches 1 if score racecp4 gameplay matches 0 run function alttp:gameplay_impulse/thaddeus_race_checkpoint4
execute if score racetime gameplay matches 1.. positioned -354 3 689 if entity @p[distance=..2] if score racecp4 gameplay matches 1 if score racecp5 gameplay matches 0 run function alttp:gameplay_impulse/thaddeus_race_checkpoint5
execute if score racetime gameplay matches 1.. if score racecp1 gameplay matches 1 if score racecp2 gameplay matches 1 if score racecp3 gameplay matches 1 if score racecp4 gameplay matches 1 if score racecp5 gameplay matches 1 positioned -360 0 766 if entity @p[distance=..2] run function alttp:gameplay_impulse/thaddeus_race_finish

execute if score racetime gameplay matches 1.. at @p as @e[type=wolf,tag=dog,tag=!angry,distance=..25] run data merge entity @s {Sitting:0b,AngerTime:9999,NoAI:0b,Attributes:[{Name:generic.movement_speed,Base:0.55},{Name:generic.attack_damage,Base:0},{Name:generic.knockback_resistance,Base:1},{Name:generic.follow_range,Base:999}]}
execute if score racetime gameplay matches 1.. at @p as @e[type=wolf,tag=dog,tag=!angry,distance=..25] run data modify entity @s AngryAt set from entity @p UUID
execute if score racetime gameplay matches 1.. at @p run tag @e[type=wolf,tag=dog,tag=!angry,distance=..25] add angry
execute if score racetime gameplay matches 1.. at @p as @e[type=wolf,tag=dog,limit=1,sort=nearest,distance=..2] at @s facing entity @p eyes rotated ~ -45 positioned as @p as @p run function delta:api/launch_looking
execute if score racetime gameplay matches 1.. as @e[type=wolf,tag=dog,tag=angry] at @s if entity @p[distance=..5] run tag @s add close
execute if score racetime gameplay matches 1.. as @e[type=wolf,tag=dog,tag=close] at @s unless entity @p[distance=..15] at @p rotated ~ 0 if block ^ ^ ^-10 #gothrough run tp @s ^ ^ ^-5 facing entity @p

execute if score firstbatch gameplay matches 3 if score active dialogue matches 1 if score id dialogue matches 179.. run function alttp:bertram_resultstick

execute store result score time dummy run time query daytime
execute if score time dummy matches ..12000 run time add 1t