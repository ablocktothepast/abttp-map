execute if score selected quests matches 1 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list1,limit=1] questlist
execute if score selected quests matches 2 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list2,limit=1] questlist
execute if score selected quests matches 3 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list3,limit=1] questlist
execute if score selected quests matches 4 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list4,limit=1] questlist
execute if score selected quests matches 5 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list5,limit=1] questlist
execute if score selected quests matches 6 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list6,limit=1] questlist

##Descriptions
execute if score sselectt dummy matches 1 run data merge entity @s {text:'{"text":"Link\'s uncle is bleeding to fucking death in the castle, go save him you ignorant moron!\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 2 run data merge entity @s {text:'{"text":"Reevz wants you to visit his sex dungeon, he told you it\'s somewhere near Death Mountain. Make sure to bring the necessary items.\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 3 run data merge entity @s {text:'{"text":"Finn told you he\'s going to invade your country. As the protector of Hyrule, you take these threats very seriously. Find Finn and send him to the shadow realm.\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 4 run data merge entity @s {text:'{"text":"All of the testers have gone rampid and are heading towards Hyrule Castle to protest against Casper not coding Ganon. Go there now to save Casper\'s sanity.\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 5 run data merge entity @s {text:'{"text":"Ganon asked Zelda if she wanted to see his suavemente moves. Zelda denied the offer, but Ganon is already on his way. Protect the princess from suave overload.\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 6 run data merge entity @s {text:'{"text":"Casper is having too much fun creating these funny quest descriptions. He\'s wasting his time and should probably get back to coding useful things. Break into his house and give him the slappening.\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 7 run data merge entity @s {text:'{"text":"You really want to see the show Black Mirror, but Hyliaflix does not have it. Find the nearest pirate ship and secure a copy of this fantastic show.\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 8 run data merge entity @s {text:'{"text":"You found a vibrating object inside Zelda\'s house in Hateno Village, confront her after you have saved her from the hands of Ganondorf.\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}
execute if score sselectt dummy matches 9 run data merge entity @s {text:'{"text":"This is the final quest in this 9 quests demo made by CasperThePancake. Would you like to complain about a detail in his coding and make him cry? If so, log into Discord as Reevz and send a message in the ABTTP Discord server. Have fun!\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}

##Completed?
scoreboard players set compcheck dummy 0
execute if score selected quests matches 1 if entity @e[type=item_display,tag=list1,tag=quest_completed] run scoreboard players set compcheck dummy 1
execute if score selected quests matches 2 if entity @e[type=item_display,tag=list2,tag=quest_completed] run scoreboard players set compcheck dummy 1
execute if score selected quests matches 3 if entity @e[type=item_display,tag=list3,tag=quest_completed] run scoreboard players set compcheck dummy 1
execute if score selected quests matches 4 if entity @e[type=item_display,tag=list4,tag=quest_completed] run scoreboard players set compcheck dummy 1
execute if score selected quests matches 5 if entity @e[type=item_display,tag=list5,tag=quest_completed] run scoreboard players set compcheck dummy 1
execute if score selected quests matches 6 if entity @e[type=item_display,tag=list6,tag=quest_completed] run scoreboard players set compcheck dummy 1

execute if score compcheck dummy matches 1 run data merge entity @s {text:'{"text":"This quest has been completed!\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}'}