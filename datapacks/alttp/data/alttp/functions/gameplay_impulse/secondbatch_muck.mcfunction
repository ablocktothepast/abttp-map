scoreboard players set @p spw_u_1 1
scoreboard players set 7 quests_2 1
scoreboard players set 7 quests_2_progress 1
scoreboard players set # gameplay 14
give @p shears{CanDestroy:["minecraft:cobweb"],display:{Name:'{"text":"Cobweb Duster","color":"red","italic":false}',Lore:['{"text":"Quest Item","color":"gold","italic":false}','{"text":"Use this to clean cobwebs and","color":"white","italic":false}','{"text":"get rid of spiders!","color":"white","italic":false}']},HideFlags:1,CustomModelData:1,Enchantments:[{id:"minecraft:efficiency",lvl:10s}],Unbreakable:1b} 1

##SPAWN THE MUCK
##Melissa if did her task
execute if score firstbatch gameplay matches 1 run setblock -300 -14 636 cobweb
execute if score firstbatch gameplay matches 1 run setblock -302 -14 638 cobweb
execute if score firstbatch gameplay matches 1 run setblock -294 -14 637 cobweb
execute if score firstbatch gameplay matches 1 run setblock -293 -12 636 cobweb
execute if score firstbatch gameplay matches 1 run setblock -297 -14 639 cobweb
execute if score firstbatch gameplay matches 1 run setblock -294 -14 643 cobweb
execute if score firstbatch gameplay matches 1 run setblock -297 -14 641 cobweb
execute if score firstbatch gameplay matches 1 run setblock -297 -12 645 cobweb
execute if score firstbatch gameplay matches 1 run setblock -294 -14 646 cobweb
execute if score firstbatch gameplay matches 1 run setblock -292 -12 646 cobweb
execute if score firstbatch gameplay matches 1 run setblock -304 -12 645 cobweb
execute if score firstbatch gameplay matches 1 run setblock -301 -12 647 cobweb
execute if score firstbatch gameplay matches 1 run setblock -301 -14 647 cobweb
execute if score firstbatch gameplay matches 1 run setblock -309 -14 641 cobweb
execute if score firstbatch gameplay matches 1 run setblock -306 -12 641 cobweb
execute if score firstbatch gameplay matches 1 run setblock -308 -14 646 cobweb

##Other
setblock -265 -3 595 cobweb
setblock -267 -1 595 cobweb
setblock -268 -3 592 cobweb
setblock -247 -2 730 cobweb
setblock -247 -2 735 cobweb
setblock -253 -6 733 cobweb
setblock -255 -5 730 cobweb
setblock -251 -6 723 cobweb
setblock -248 -6 723 cobweb
setblock -326 -1 715 cobweb
setblock -323 -1 717 cobweb
setblock -318 -1 715 cobweb
setblock -334 2 645 cobweb
setblock -328 2 647 cobweb
setblock -332 10 645 cobweb
setblock -341 4 678 cobweb
setblock -373 3 723 cobweb
setblock -413 -5 678 cobweb
setblock -408 -8 681 cobweb

##NPCs
tp @e[tag=thaddeus] -401 -8 683 -59 0
tp @e[tag=elowen] -345 4 678 140 0
tp @e[tag=gareth] -345 4 677 119 0
tp @e[tag=tristan] -338 2 649 114 0
tp @e[tag=erin] -293 -9 638 -119 0
tp @e[tag=agatha] -288 -9 648 155 0
tp @e[tag=agathacat] -289 -9 648 157 0
tp @e[tag=cedric] -262 -6 732 82 0
tp @e[tag=eamon] -261 -6 733 57 0
tp @e[tag=owen] -365 0 728 -115 0
tp @e[tag=seraphina] -335 -2 713 75 0
tp @e[tag=amara] -345 4 679 133 0
kill @e[type=marker,tag=erin_marker]
tag @e[tag=erin] remove dynamic
execute as @e[type=item_display,tag=erin] run function animated_java:erin/animations/running/stop
execute as @e[type=item_display,tag=erin] run function animated_java:erin/animations/idle/play

bossbar set questupdate name [{"text":"Quest added: "},{"text":"A town filled with muck","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s