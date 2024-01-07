scoreboard players set letterIndex dialogue 0
scoreboard players set cutscenetick dialogue 0
scoreboard players set length dialogue 999

execute as @p at @s run playsound alttp.message_finish weather @s

execute store result score idd dialogue run scoreboard players get id dialogue

execute if score id dialogue matches 1..2 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 2 run schedule function alttp:gameplay_impulse/wakewhite 3s
execute if score id dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 3 run schedule function alttp:gameplay_impulse/wake_up 140t

execute if score id dialogue matches 4..5 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 6 if score choice dialogue matches 1 run scoreboard players set idd dialogue 7
execute if score id dialogue matches 6 if score choice dialogue matches 2 run scoreboard players set idd dialogue 8
execute if score id dialogue matches 6 as @e[type=item_display,tag=unclestart] run function animated_java:uncle_alphon/animations/idle/stop
execute if score id dialogue matches 6 as @e[type=item_display,tag=unclestart] run function animated_java:uncle_alphon/animations/idle_grin/play
execute if score id dialogue matches 7..8 run function alttp:dialogue_stop
execute if score id dialogue matches 7..8 run function alttp:gameplay_impulse/talked_uncle_downstairs

execute if score id dialogue matches 9..13 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 10 as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/apple_basket/play
execute if score id dialogue matches 10 run schedule function alttp:applebasket 30t
execute if score id dialogue matches 14 run function alttp:dialogue_stop
execute if score id dialogue matches 14 run function alttp:gameplay_impulse/first_uncle_task

execute if score id dialogue matches 15 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 16 if score choice dialogue matches 1 run scoreboard players set idd dialogue 17
execute if score id dialogue matches 16 if score choice dialogue matches 2 run scoreboard players set idd dialogue 18
execute if score id dialogue matches 16 if score choice dialogue matches 3 run scoreboard players set idd dialogue 19

execute if score id dialogue matches 17..18 run scoreboard players set idd dialogue 20

execute if score id dialogue matches 19 run function alttp:dialogue_stop

execute if score id dialogue matches 20 if score choice dialogue matches 1 run scoreboard players set idd dialogue 21
execute if score id dialogue matches 20 if score choice dialogue matches 2 run scoreboard players set idd dialogue 23

execute if score id dialogue matches 21 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 21 run scoreboard players add @p rupees 10
execute if score id dialogue matches 21 run playsound minecraft:alttp.rupee weather @p
execute if score id dialogue matches 22..23 run function alttp:dialogue_stop
execute if score id dialogue matches 22 run function alttp:gameplay_impulse/owen_apple_delivered

execute if score id dialogue matches 24 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 25 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 25 if score choice dialogue matches 1 run scoreboard players set idd dialogue 26
execute if score id dialogue matches 25 if score choice dialogue matches 2 run scoreboard players set idd dialogue 27
execute if score id dialogue matches 26..27 run function alttp:dialogue_stop

execute if score id dialogue matches 28 run scoreboard players add idd dialogue 1

execute if score id dialogue matches 29 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 29 if score choice dialogue matches 1 run scoreboard players set idd dialogue 30
execute if score id dialogue matches 29 if score choice dialogue matches 2 run scoreboard players set idd dialogue 31
execute if score id dialogue matches 30 run scoreboard players set idd dialogue 33
execute if score id dialogue matches 31..32 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 33..37 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 38 run function alttp:dialogue_stop
execute if score id dialogue matches 38 run function alttp:gameplay_impulse/bernard_task_begin

execute if score id dialogue matches 39..43 run scoreboard players add idd dialogue 1

execute if score id dialogue matches 40 run scoreboard players set path cutscene 1
execute if score id dialogue matches 40 run function alttp:cutscene_start

execute if score id dialogue matches 43 run function alttp:cutscene_stop
execute if score id dialogue matches 44 run function alttp:dialogue_stop
execute if score id dialogue matches 43 as @e[type=item_display,tag=aj.neal.root] at @s run tp @s ~ ~ ~ 79 0
execute if score id dialogue matches 44 run function alttp:gameplay_impulse/hide_and_seek_begin

execute if score id dialogue matches 45 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 46 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 46 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 46 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/hiding/stop
execute if score id dialogue matches 46 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/idle/play
execute if score id dialogue matches 46 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/was_found/play
execute if score id dialogue matches 47 if score elisabethfound gameplay matches 1 if score nealfound gameplay matches 1 run scoreboard players set idd dialogue 49
execute if score id dialogue matches 47 if score idd dialogue matches 47 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 48 run function alttp:dialogue_stop
execute if score id dialogue matches 48 run function alttp:gameplay_impulse/hide_and_seek_found_bernard
execute if score id dialogue matches 49 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 50 run function alttp:dialogue_stop
execute if score id dialogue matches 50 run function alttp:gameplay_impulse/hide_and_seek_found_all

execute if score id dialogue matches 51 if score nealfound gameplay matches 1 if score bernardfound gameplay matches 1 run scoreboard players set idd dialogue 53
execute if score id dialogue matches 51 if score idd dialogue matches 51 run scoreboard players set idd dialogue 52
execute if score id dialogue matches 52..53 run function alttp:dialogue_stop
execute if score id dialogue matches 52 run function alttp:gameplay_impulse/hide_and_seek_found_elisabeth
execute if score id dialogue matches 53 run function alttp:gameplay_impulse/hide_and_seek_found_all

execute if score id dialogue matches 54 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 55 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 55 if score choice dialogue matches 2 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 56 run function alttp:dialogue_stop
execute if score id dialogue matches 55 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/sleepy/stop
execute if score id dialogue matches 55 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/idle/play
execute if score id dialogue matches 55 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/was_found/play
execute if score id dialogue matches 55 if score choice dialogue matches 1 run scoreboard players set idd dialogue 57
execute if score id dialogue matches 55 if score choice dialogue matches 1 run tp @e[tag=neal] -279 -14 728 100 0
execute if score id dialogue matches 57 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 58 if score bernardfound gameplay matches 1 if score elisabethfound gameplay matches 1 run scoreboard players set idd dialogue 60
execute if score id dialogue matches 58 if score idd dialogue matches 58 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 59..60 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/idle/stop
execute if score id dialogue matches 59..60 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/sleepy/play
execute if score id dialogue matches 59..60 as @e[type=item_display,tag=aj.neal.root] if score bernardfound gameplay matches 1 if score elisabethfound gameplay matches 1 run function animated_java:neal/animations/sleepy/stop
execute if score id dialogue matches 59..60 as @e[type=item_display,tag=aj.neal.root] if score bernardfound gameplay matches 1 if score elisabethfound gameplay matches 1 run function animated_java:neal/animations/idle/play
execute if score id dialogue matches 59..60 run function alttp:dialogue_stop
execute if score id dialogue matches 59..60 run tp @e[tag=neal] -279 -14 728 180 0
execute if score id dialogue matches 59 run function alttp:gameplay_impulse/hide_and_seek_found_neal
execute if score id dialogue matches 60 run function alttp:gameplay_impulse/hide_and_seek_found_all

execute if score id dialogue matches 61..63 run function alttp:dialogue_stop

execute if score id dialogue matches 64..72 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 67 as @e[tag=aj.bernard.root] run function animated_java:bernard/animations/frienship/play
execute if score id dialogue matches 67 as @e[tag=aj.neal.root] run function animated_java:neal/animations/frienship/play
execute if score id dialogue matches 67 as @e[tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/frienship/play
execute if score id dialogue matches 73 run function alttp:dialogue_stop
execute if score id dialogue matches 73 run function alttp:gameplay_impulse/hide_and_seek_end

execute if score id dialogue matches 74 run function alttp:dialogue_stop

execute if score id dialogue matches 75 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 76 run function alttp:dialogue_stop

execute if score id dialogue matches 77 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 78 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 78 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 79..80 run scoreboard players add idd dialogue 1

execute if score id dialogue matches 81 if score choice dialogue matches 1 run scoreboard players set idd dialogue 82
execute if score id dialogue matches 82 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 83 if score choice dialogue matches 1 run scoreboard players set firstbatch gameplay 1
execute if score id dialogue matches 83 if score choice dialogue matches 1 run scoreboard players set idd dialogue 88
execute if score id dialogue matches 83 if score choice dialogue matches 2 run scoreboard players set idd dialogue 80
execute if score id dialogue matches 83 if score choice dialogue matches 3 run function alttp:dialogue_stop

execute if score id dialogue matches 81 if score choice dialogue matches 2 run scoreboard players set idd dialogue 84
execute if score id dialogue matches 84 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 85 if score choice dialogue matches 1 run scoreboard players set firstbatch gameplay 2
execute if score id dialogue matches 85 if score choice dialogue matches 1 run scoreboard players set idd dialogue 88
execute if score id dialogue matches 85 if score choice dialogue matches 2 run scoreboard players set idd dialogue 80
execute if score id dialogue matches 85 if score choice dialogue matches 3 run function alttp:dialogue_stop

execute if score id dialogue matches 81 if score choice dialogue matches 3 run scoreboard players set idd dialogue 86
execute if score id dialogue matches 86 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 87 if score choice dialogue matches 1 run scoreboard players set firstbatch gameplay 3
execute if score id dialogue matches 87 if score choice dialogue matches 1 run scoreboard players set idd dialogue 88
execute if score id dialogue matches 87 if score choice dialogue matches 2 run scoreboard players set idd dialogue 80
execute if score id dialogue matches 87 if score choice dialogue matches 3 run function alttp:dialogue_stop

execute if score idd dialogue matches 88 as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/idle/stop
execute if score idd dialogue matches 88 as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/idle_grin/play

execute if score id dialogue matches 88 if score firstbatch gameplay matches 1 run scoreboard players set idd dialogue 89
execute if score id dialogue matches 88 if score firstbatch gameplay matches 2 run scoreboard players set idd dialogue 94
execute if score id dialogue matches 88 if score firstbatch gameplay matches 3 run scoreboard players set idd dialogue 97
execute if score id dialogue matches 88 as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/idle_grin/stop
execute if score id dialogue matches 88 as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/idle/play
execute if score id dialogue matches 89..92 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 93 run function alttp:dialogue_stop
execute if score id dialogue matches 93 run function alttp:gameplay_impulse/firstbatch_navigation
execute if score id dialogue matches 94..95 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 96 run function alttp:dialogue_stop
execute if score id dialogue matches 96 run function alttp:gameplay_impulse/firstbatch_agility
execute if score id dialogue matches 97..98 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 99 run function alttp:dialogue_stop
execute if score id dialogue matches 99 run function alttp:gameplay_impulse/firstbatch_knowledge

execute if score id dialogue matches 100 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 101 if score choice dialogue matches 3 run function alttp:ajsummon/melissa_chance
execute if score id dialogue matches 101 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 101 if score choice dialogue matches 2 run scoreboard players set idd dialogue 103
execute if score id dialogue matches 101 if score choice dialogue matches 2 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/offended/play
execute if score id dialogue matches 101 if score choice dialogue matches 1 run scoreboard players set idd dialogue 102
execute if score id dialogue matches 103 run function alttp:ajsummon/melissa_chance
execute if score id dialogue matches 103 run function alttp:dialogue_stop
execute if score id dialogue matches 102 run scoreboard players set idd dialogue 104
execute if score id dialogue matches 104..109 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 108 run scoreboard players set @p magic 60
execute if score id dialogue matches 108 at @p run playsound minecraft:alttp.heart weather @p
execute if score id dialogue matches 110 run function alttp:ajsummon/melissa_chance
execute if score id dialogue matches 110 run function alttp:dialogue_stop
execute if score id dialogue matches 110 run function alttp:gameplay_impulse/melissa_introductioned

execute if score id dialogue matches 111 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 112 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 112 if score choice dialogue matches 2 run scoreboard players set idd dialogue 114
execute if score id dialogue matches 112 if score choice dialogue matches 2 run scoreboard players set @p magic 60
execute if score id dialogue matches 112 if score choice dialogue matches 2 at @p run playsound minecraft:alttp.heart weather @p
execute if score id dialogue matches 112 if score choice dialogue matches 3 run function alttp:ajsummon/melissa_chance
execute if score id dialogue matches 112 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 113..115 run function alttp:ajsummon/melissa_chance
execute if score id dialogue matches 113..115 run function alttp:dialogue_stop

execute if score id dialogue matches 116 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 116 run scoreboard players add @p rupees 10
execute if score id dialogue matches 116 run playsound minecraft:alttp.rupee weather @p
execute if score id dialogue matches 117 run function alttp:dialogue_stop
execute if score id dialogue matches 117 run function alttp:gameplay_impulse/melissa_taskdone

execute if score id dialogue matches 118 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 119 if score choice dialogue matches 2 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 119 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 119 if score choice dialogue matches 1 run scoreboard players set idd dialogue 121
execute if score id dialogue matches 119 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/hovering/stop
execute if score id dialogue matches 119 if score choice dialogue matches 1 run schedule function alttp:ajsummon/thaddeusidle 51t
execute if score id dialogue matches 119 if score choice dialogue matches 1 as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/standing_up/play
execute if score id dialogue matches 120 run function alttp:dialogue_stop
execute if score id dialogue matches 121..123 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 124 run function alttp:dialogue_stop
execute if score id dialogue matches 124 run function alttp:gameplay_impulse/thaddeus_introductioned

execute if score id dialogue matches 125..129 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 126 run summon marker -313 1 598 {Tags:["thaddeuslock"]}
execute if score id dialogue matches 126 run tp @e[type=marker,tag=dialogue_tp] -375 1 754
execute if score id dialogue matches 126 run tp @e[type=marker,tag=thaddeuslock] -363 1 761
execute if score id dialogue matches 127 run tp @e[type=marker,tag=dialogue_tp] -378 -6 675
execute if score id dialogue matches 127 run tp @e[type=marker,tag=thaddeuslock] -371 -6 675
execute if score id dialogue matches 128 run tp @e[type=marker,tag=dialogue_tp] -275 -7 632
execute if score id dialogue matches 128 run tp @e[type=marker,tag=thaddeuslock] -272 -7 631
execute if score id dialogue matches 129 run tp @e[type=marker,tag=dialogue_tp] -400.872 -11 714.985
execute if score id dialogue matches 129 run tag @e[tag=thaddeus] add npcfocus
execute if score id dialogue matches 129 run kill @e[type=marker,tag=thaddeuslock]
execute if score id dialogue matches 130 run function alttp:dialogue_stop
execute if score id dialogue matches 130 run function alttp:gameplay_impulse/thaddeus_raceoverviewed

execute if score id dialogue matches 131 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 132 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 132 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 133 run function alttp:dialogue_stop
execute if score id dialogue matches 133 run function alttp:gameplay_impulse/thaddeus_racestart

execute if score id dialogue matches 134 unless score racefinish gameplay matches ..1470 run scoreboard players set idd dialogue 135
execute if score id dialogue matches 134 if score racefinish gameplay matches ..1470 as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/surprised/play
execute if score id dialogue matches 135 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 136 run function alttp:dialogue_stop
execute if score id dialogue matches 134 if score racefinish gameplay matches ..1470 run scoreboard players set idd dialogue 137
execute if score id dialogue matches 137 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 137 run scoreboard players add @p rupees 10
execute if score id dialogue matches 137 at @p run playsound minecraft:alttp.heart weather @p
execute if score id dialogue matches 138 run function alttp:dialogue_stop
execute if score id dialogue matches 138 run function alttp:gameplay_impulse/thaddeus_taskdone

execute if score id dialogue matches 139..142 run function alttp:dialogue_stop

execute if score id dialogue matches 143..144 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 145 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 145 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 146 run function alttp:dialogue_stop
execute if score id dialogue matches 146 run function alttp:gameplay_impulse/bertram_gosit

execute if score id dialogue matches 147 run function alttp:dialogue_stop
execute if score id dialogue matches 148..178 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 148 run tag @e remove npcfocus
execute if score id dialogue matches 148 run tp @e[type=marker,tag=dialogue_tp] -297.693 -9 683.240
execute if score id dialogue matches 148 run tag @e[tag=percival] add npcfocus
execute if score id dialogue matches 148 as @e[tag=percival] run function animated_java:percival/animations/idle_sitting/stop
execute if score id dialogue matches 148 as @e[tag=percival] run function animated_java:percival/animations/idle_sitting_grin/play
execute if score id dialogue matches 149 run tp @e[type=marker,tag=dialogue_tp] -296.595 -9 679.778
execute if score id dialogue matches 149 run tag @e remove npcfocus
execute if score id dialogue matches 149 as @e[tag=percival] run function animated_java:percival/animations/idle_sitting_grin/stop
execute if score id dialogue matches 149 as @e[tag=percival] run function animated_java:percival/animations/idle_sitting/play
execute if score id dialogue matches 149 as @e[tag=amara] run function animated_java:amara/animations/emote/play
execute if score id dialogue matches 149 run tag @e[tag=amara] add npcfocus
execute if score id dialogue matches 150 run tp @e[type=marker,tag=dialogue_tp] -296.595 -9 679.778
execute if score id dialogue matches 150 run tag @e remove npcfocus
execute if score id dialogue matches 150 as @e[tag=fiona] run function animated_java:fiona/animations/emote/play
execute if score id dialogue matches 150 run tag @e[tag=fiona] add npcfocus
execute if score id dialogue matches 151 run tp @e[type=marker,tag=dialogue_tp] -297.039 -9.0625 676.803
execute if score id dialogue matches 151 run tag @e remove npcfocus
execute if score id dialogue matches 151 as @e[tag=lysander] run function animated_java:lysander/animations/emote_sitting/play
execute if score id dialogue matches 151 run tag @e[tag=lysander] add npcfocus
execute if score id dialogue matches 148 positioned -295 -8.5 681 rotated 109 0 run function animated_java:villager_link/summon
execute if score id dialogue matches 148 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/idle_sitting/play
execute if score id dialogue matches 152 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/emote_sitting/play
execute if score id dialogue matches 148 run setblock -295 -9 681 oak_slab[type=bottom]
execute if score id dialogue matches 152 run tag @e remove npc_focus
execute if score id dialogue matches 152 run tp @e[type=marker,tag=dialogue_tp] -297.190 -9 680.547
execute if score id dialogue matches 152 run tag @e[tag=aj.villager_link.root] add npcfocus
execute if score id dialogue matches 153 run tp @e[type=marker,tag=dialogue_tp] -295 -9 681
execute if score id dialogue matches 153 run tag @e remove npcfocus
execute if score id dialogue matches 153 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/remove/this
execute if score id dialogue matches 153 run setblock -295 -9 681 air
execute if score id dialogue matches 153 run tag @e[tag=bertram] add npcfocus

execute if score id dialogue matches 157 run tp @e[type=marker,tag=dialogue_tp] -296.531 -9 679.537
execute if score id dialogue matches 159 run tp @e[type=marker,tag=dialogue_tp] -295 -9 681

execute if score id dialogue matches 161 run tp @e[type=marker,tag=dialogue_tp] -296.531 -9 679.537
execute if score id dialogue matches 163 run tp @e[type=marker,tag=dialogue_tp] -295 -9 681

execute if score id dialogue matches 165 run tp @e[type=marker,tag=dialogue_tp] -296.531 -9 679.537
execute if score id dialogue matches 167 run tp @e[type=marker,tag=dialogue_tp] -295 -9 681

execute if score id dialogue matches 169 run tp @e[type=marker,tag=dialogue_tp] -296.531 -9 679.537
execute if score id dialogue matches 171 run tp @e[type=marker,tag=dialogue_tp] -295 -9 681

execute if score id dialogue matches 173 run tp @e[type=marker,tag=dialogue_tp] -296.531 -9 679.537
execute if score id dialogue matches 175 run tp @e[type=marker,tag=dialogue_tp] -295 -9 681

execute if score id dialogue matches 159 if score choice dialogue matches 2 run scoreboard players set bertramcorrect gameplay 1
execute if score id dialogue matches 163 if score choice dialogue matches 1 run scoreboard players set bertramcorrect gameplay 1
execute if score id dialogue matches 167 if score choice dialogue matches 3 run scoreboard players set bertramcorrect gameplay 1
execute if score id dialogue matches 171 if score choice dialogue matches 2 run scoreboard players set bertramcorrect gameplay 1
execute if score id dialogue matches 175 if score choice dialogue matches 2 run scoreboard players set bertramcorrect gameplay 1

execute if score id dialogue matches 160 if score bertramcorrect gameplay matches 1 run title @p times 5t 30t 5t
execute if score id dialogue matches 160 if score bertramcorrect gameplay matches 1 run title @p title ""
execute if score id dialogue matches 160 if score bertramcorrect gameplay matches 1 run title @p subtitle "Correct! (+1 point)"
execute if score id dialogue matches 160 if score bertramcorrect gameplay matches 1 run scoreboard players add bertrampoints gameplay 1

execute if score id dialogue matches 164 if score bertramcorrect gameplay matches 1 run title @p times 5t 30t 5t
execute if score id dialogue matches 164 if score bertramcorrect gameplay matches 1 run title @p title ""
execute if score id dialogue matches 164 if score bertramcorrect gameplay matches 1 run title @p subtitle "Correct! (+1 point)"
execute if score id dialogue matches 164 if score bertramcorrect gameplay matches 1 run scoreboard players add bertrampoints gameplay 1

execute if score id dialogue matches 168 if score bertramcorrect gameplay matches 1 run title @p times 5t 30t 5t
execute if score id dialogue matches 168 if score bertramcorrect gameplay matches 1 run title @p title ""
execute if score id dialogue matches 168 if score bertramcorrect gameplay matches 1 run title @p subtitle "Correct! (+1 point)"
execute if score id dialogue matches 168 if score bertramcorrect gameplay matches 1 run scoreboard players add bertrampoints gameplay 1

execute if score id dialogue matches 172 if score bertramcorrect gameplay matches 1 run title @p times 5t 30t 5t
execute if score id dialogue matches 172 if score bertramcorrect gameplay matches 1 run title @p title ""
execute if score id dialogue matches 172 if score bertramcorrect gameplay matches 1 run title @p subtitle "Correct! (+1 point)"
execute if score id dialogue matches 172 if score bertramcorrect gameplay matches 1 run scoreboard players add bertrampoints gameplay 1

execute if score id dialogue matches 176 if score bertramcorrect gameplay matches 1 run title @p times 5t 30t 5t
execute if score id dialogue matches 176 if score bertramcorrect gameplay matches 1 run title @p title ""
execute if score id dialogue matches 176 if score bertramcorrect gameplay matches 1 run title @p subtitle "Correct! (+1 point)"
execute if score id dialogue matches 176 if score bertramcorrect gameplay matches 1 run scoreboard players add bertrampoints gameplay 1

execute if score id dialogue matches 160 if score bertramcorrect gameplay matches 1 run scoreboard players set bertramcorrect gameplay 0
execute if score id dialogue matches 164 if score bertramcorrect gameplay matches 1 run scoreboard players set bertramcorrect gameplay 0
execute if score id dialogue matches 168 if score bertramcorrect gameplay matches 1 run scoreboard players set bertramcorrect gameplay 0
execute if score id dialogue matches 172 if score bertramcorrect gameplay matches 1 run scoreboard players set bertramcorrect gameplay 0
execute if score id dialogue matches 176 if score bertramcorrect gameplay matches 1 run scoreboard players set bertramcorrect gameplay 0

execute if score id dialogue matches 179 if score bertrampoints gameplay matches 5 run scoreboard players set idd dialogue 180
execute if score id dialogue matches 179 if score bertrampoints gameplay matches 4 run scoreboard players set idd dialogue 190
execute if score id dialogue matches 179 if score bertrampoints gameplay matches 3 run scoreboard players set idd dialogue 198
execute if score id dialogue matches 179 if score bertrampoints gameplay matches 2 run scoreboard players set idd dialogue 206
execute if score id dialogue matches 179 if score bertrampoints gameplay matches 1 run scoreboard players set idd dialogue 214
execute if score id dialogue matches 179 if score bertrampoints gameplay matches 0 run scoreboard players set idd dialogue 222

execute if score id dialogue matches 179 positioned -295 -8.5 681 rotated 109 0 run function animated_java:villager_link/summon
execute if score id dialogue matches 179 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/idle_sitting/play
execute if score id dialogue matches 179 run setblock -295 -9 681 oak_slab[type=bottom]

execute if score id dialogue matches 180..188 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 190..196 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 198..204 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 206..212 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 214..220 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 222..230 run scoreboard players add idd dialogue 1

execute if score id dialogue matches 189 run scoreboard players set idd dialogue 232
execute if score id dialogue matches 197 run scoreboard players set idd dialogue 233
execute if score id dialogue matches 205 run scoreboard players set idd dialogue 233
execute if score id dialogue matches 213 run scoreboard players set idd dialogue 233
execute if score id dialogue matches 221 run scoreboard players set idd dialogue 233
execute if score id dialogue matches 231 run scoreboard players set idd dialogue 233

execute if score idd dialogue matches 232..233 run tp @e[type=marker,tag=dialogue_tp] -295 -9 681
execute if score idd dialogue matches 232..233 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/remove/this
execute if score idd dialogue matches 232..233 run setblock -295 -9 681 air

execute if score id dialogue matches 180 as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/quiz_result/play
execute if score id dialogue matches 190 as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/quiz_result/play
execute if score id dialogue matches 198 as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/quiz_result/play
execute if score id dialogue matches 206 as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/quiz_result/play
execute if score id dialogue matches 214 as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/quiz_result/play
execute if score id dialogue matches 224 as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/quiz_result/play

execute if score id dialogue matches 182 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/clap/play
execute if score id dialogue matches 192 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/clap/play
execute if score id dialogue matches 200 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/clap/play
execute if score id dialogue matches 208 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/clap/play
execute if score id dialogue matches 216 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/clap/play
execute if score id dialogue matches 226 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/clap/play

execute if score id dialogue matches 184 as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/emote/play
execute if score id dialogue matches 194 as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/emote/play
execute if score id dialogue matches 202 as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/emote/play
execute if score id dialogue matches 210 as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/emote/play
execute if score id dialogue matches 218 as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/emote/play
execute if score id dialogue matches 228 as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/emote/play

execute if score id dialogue matches 186 as @e[type=item_display,tag=percival] run function animated_java:percival/animations/emote_sitting/play
execute if score id dialogue matches 196 as @e[type=item_display,tag=percival] run function animated_java:percival/animations/emote_sitting/play
execute if score id dialogue matches 204 as @e[type=item_display,tag=percival] run function animated_java:percival/animations/emote_sitting/play
execute if score id dialogue matches 212 as @e[type=item_display,tag=percival] run function animated_java:percival/animations/emote_sitting/play
execute if score id dialogue matches 220 as @e[type=item_display,tag=percival] run function animated_java:percival/animations/emote_sitting/play
execute if score id dialogue matches 230 as @e[type=item_display,tag=percival] run function animated_java:percival/animations/emote_sitting/play

execute if score id dialogue matches 188 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/emote_sitting/play
execute if score id dialogue matches 196 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/emote_sitting/play
execute if score id dialogue matches 202 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/emote_sitting/play
execute if score id dialogue matches 208 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/emote_sitting/play
execute if score id dialogue matches 214 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/emote_sitting/play
execute if score id dialogue matches 222 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/emote_sitting/play

execute if score id dialogue matches 232..233 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 234 run function alttp:dialogue_stop
execute if score id dialogue matches 234 run function alttp:gameplay_impulse/bertram_finished

execute if score id dialogue matches 235 run function alttp:dialogue_stop

execute if score id dialogue matches 236..237 run scoreboard players add idd dialogue 1

execute if score id dialogue matches 238 if score choice dialogue matches 1 run scoreboard players set idd dialogue 239
execute if score id dialogue matches 238 if score choice dialogue matches 2 run scoreboard players set idd dialogue 241

execute if score id dialogue matches 239 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 241 run scoreboard players add idd dialogue 1

execute if score id dialogue matches 240 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 240 if score choice dialogue matches 2 run scoreboard players set idd dialogue 238
execute if score id dialogue matches 240 if score choice dialogue matches 1 run scoreboard players set secondbatch gameplay 1
execute if score id dialogue matches 240 if score choice dialogue matches 1 run scoreboard players set idd dialogue 243

execute if score id dialogue matches 242 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 242 if score choice dialogue matches 2 run scoreboard players set idd dialogue 238
execute if score id dialogue matches 242 if score choice dialogue matches 1 run scoreboard players set secondbatch gameplay 2
execute if score id dialogue matches 242 if score choice dialogue matches 1 run scoreboard players set idd dialogue 243

execute if score id dialogue matches 243 if score secondbatch gameplay matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 244..245 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 246 if score firstbatch gameplay matches 1 run function alttp:dialogue_stop
execute if score id dialogue matches 246 unless score firstbatch gameplay matches 1 run scoreboard players set idd dialogue 250
execute if score id dialogue matches 246 run function alttp:gameplay_impulse/secondbatch_cat

execute if score id dialogue matches 243 if score secondbatch gameplay matches 2 run scoreboard players set idd dialogue 247
execute if score id dialogue matches 247..248 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 249 if score firstbatch gameplay matches 1 run function alttp:dialogue_stop
execute if score id dialogue matches 249 unless score firstbatch gameplay matches 1 run scoreboard players set idd dialogue 250
execute if score id dialogue matches 249 run function alttp:gameplay_impulse/secondbatch_muck

execute if score id dialogue matches 250..252 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 252 run scoreboard players set @p magic 60
execute if score id dialogue matches 252 at @p run playsound minecraft:alttp.heart weather @p
execute if score id dialogue matches 253 run function alttp:dialogue_stop

execute if score id dialogue matches 254 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 255 run function alttp:dialogue_stop

execute if score id dialogue matches 256..257 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 257 run scoreboard players add @p rupees 10
execute if score id dialogue matches 257 as @e[type=item_display,tag=agatha] run function animated_java:agatha/animations/thank_you_thank_you/play
execute if score id dialogue matches 257 at @p run playsound minecraft:alttp.rupee weather @p ~ ~ ~ 1 1
execute if score id dialogue matches 258 run function alttp:dialogue_stop
execute if score id dialogue matches 258 run function alttp:gameplay_impulse/agathataskfinish

execute if score id dialogue matches 259 run function alttp:dialogue_stop
execute if score id dialogue matches 260 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 261 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 261 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 261 if score choice dialogue matches 1 run function alttp:muck_check
execute if score id dialogue matches 262 unless score muckleft dummy matches 0 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 262 unless score muckleft dummy matches 0 run title @p times 5t 20t 5t
execute if score id dialogue matches 262 unless score muckleft dummy matches 0 run title @p title ""
execute if score id dialogue matches 262 unless score muckleft dummy matches 0 run title @p subtitle ["",{"score":{"name":"muckleft","objective":"dummy"}}," cobwebs remaining!"]
execute if score id dialogue matches 262 if score muckleft dummy matches 0 run scoreboard players set idd dialogue 264
execute if score id dialogue matches 263 run function alttp:dialogue_stop
execute if score id dialogue matches 264 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 265 run function alttp:dialogue_stop
execute if score id dialogue matches 265 run function alttp:gameplay_impulse/muck_taskdone

execute if score id dialogue matches 266 run function alttp:dialogue_stop
execute if score id dialogue matches 267 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 268 run function alttp:dialogue_stop

execute if score id dialogue matches 269 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 270 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 270 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 270 if score choice dialogue matches 2 run scoreboard players set idd dialogue 272
execute if score id dialogue matches 271..272 run function alttp:dialogue_stop

execute if score id dialogue matches 273 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 274 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 274 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 274 if score choice dialogue matches 2 run scoreboard players set idd dialogue 276
execute if score id dialogue matches 275..276 run function alttp:dialogue_stop

execute if score id dialogue matches 277 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 278 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 278 if score choice dialogue matches 2 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 278 if score choice dialogue matches 1 run scoreboard players set idd dialogue 280
execute if score id dialogue matches 279 run function alttp:dialogue_stop
execute if score id dialogue matches 280..281 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 282..284 run function alttp:dialogue_stop

execute if score id dialogue matches 285 run function alttp:dialogue_stop
execute if score id dialogue matches 286 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 287..289 run function alttp:dialogue_stop
execute if score id dialogue matches 290 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 291 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 291 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 291 if score choice dialogue matches 2 run scoreboard players set idd dialogue 293
execute if score id dialogue matches 292..296 run function alttp:dialogue_stop

execute if score id dialogue matches 297 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 298 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 298 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 298 if score choice dialogue matches 2 run scoreboard players set idd dialogue 300
execute if score id dialogue matches 299..300 run function alttp:dialogue_stop

execute if score id dialogue matches 301 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 302 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 302 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 302 if score choice dialogue matches 2 run scoreboard players set idd dialogue 307
execute if score id dialogue matches 303 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 304 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 304 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 304 if score choice dialogue matches 2 run scoreboard players set idd dialogue 306
execute if score id dialogue matches 305..310 run function alttp:dialogue_stop

execute if score id dialogue matches 311 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 312..314 run function alttp:dialogue_stop

execute if score id dialogue matches 315 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 316 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 316 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 316 if score choice dialogue matches 2 run scoreboard players set idd dialogue 318
execute if score id dialogue matches 317..320 run function alttp:dialogue_stop

execute if score id dialogue matches 321 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 322..325 run function alttp:dialogue_stop

execute if score id dialogue matches 326 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 327..328 run function alttp:dialogue_stop

execute if score id dialogue matches 329 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 330 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 330 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 330 if score choice dialogue matches 2 run scoreboard players set idd dialogue 332
execute if score id dialogue matches 331..333 run function alttp:dialogue_stop

execute if score id dialogue matches 334 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 335..350 run function alttp:dialogue_stop

execute if score id dialogue matches 351 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 352 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 352 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 352 if score choice dialogue matches 2 run scoreboard players set idd dialogue 354
execute if score id dialogue matches 353..363 run function alttp:dialogue_stop

execute if score id dialogue matches 364 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 365..375 run function alttp:dialogue_stop

execute if score id dialogue matches 376 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 377 if score choice dialogue matches 3 run function alttp:dialogue_stop
execute if score id dialogue matches 377 if score choice dialogue matches 1 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 377 if score choice dialogue matches 2 run scoreboard players set idd dialogue 379
execute if score id dialogue matches 378..384 run function alttp:dialogue_stop

execute if score id dialogue matches 385..386 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 387 run function alttp:dialogue_stop

execute if score id dialogue matches 388..389 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 390 run function alttp:dialogue_stop

execute if score id dialogue matches 391..392 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 393..394 run function alttp:dialogue_stop

execute if score id dialogue matches 395..396 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 397..405 run function alttp:dialogue_stop

execute if score id dialogue matches 406..419 run function alttp:dialogue_stop

execute if score id dialogue matches 420 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 421 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 421 if score choice dialogue matches 1 unless score @p rupees matches 50.. run scoreboard players set idd dialogue 422
execute if score id dialogue matches 421 if score choice dialogue matches 1 if score @p rupees matches 50.. run scoreboard players set idd dialogue 423
execute if score id dialogue matches 421 if score choice dialogue matches 1 if score @p rupees matches 50.. run function alttp:shops_buy/oakheart_alden_1
execute if score id dialogue matches 422..423 run function alttp:dialogue_stop

execute if score id dialogue matches 424 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 425 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 425 if score choice dialogue matches 1 unless score @p rupees matches 75.. run scoreboard players set idd dialogue 426
execute if score id dialogue matches 425 if score choice dialogue matches 1 if score @p rupees matches 75.. run scoreboard players set idd dialogue 427
execute if score id dialogue matches 425 if score choice dialogue matches 1 if score @p rupees matches 75.. run function alttp:shops_buy/oakheart_alden_2
execute if score id dialogue matches 426..427 run function alttp:dialogue_stop

execute if score id dialogue matches 428 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 429 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 429 if score choice dialogue matches 1 unless score @p rupees matches 40.. run scoreboard players set idd dialogue 430
execute if score id dialogue matches 429 if score choice dialogue matches 1 if score @p rupees matches 40.. run scoreboard players set idd dialogue 431
execute if score id dialogue matches 429 if score choice dialogue matches 1 if score @p rupees matches 40.. run function alttp:shops_buy/oakheart_alden_3
execute if score id dialogue matches 430..431 run function alttp:dialogue_stop

execute if score id dialogue matches 432 run scoreboard players add idd dialogue 1
execute if score id dialogue matches 433 if score choice dialogue matches 2 run function alttp:dialogue_stop
execute if score id dialogue matches 433 if score choice dialogue matches 1 unless score @p rupees matches 25.. run scoreboard players set idd dialogue 434
execute if score id dialogue matches 433 if score choice dialogue matches 1 if score @p rupees matches 25.. run scoreboard players set idd dialogue 435
execute if score id dialogue matches 433 if score choice dialogue matches 1 if score @p rupees matches 25.. run function alttp:shops_buy/oakheart_alden_4
execute if score id dialogue matches 434..438 run function alttp:dialogue_stop

execute store result score id dialogue run scoreboard players get idd dialogue

scoreboard players set choice dialogue 1
scoreboard players set @p rightclick 0
scoreboard players set rc_cool dialogue 10