kill @e[type=armor_stand,tag=unclestart]
function animated_java:uncle_alphon/remove/all
execute if score # gameplay matches ..5 run summon armor_stand -316 -1 584 {Marker:1b,Invisible:1b,Tags:["npc","unclestart"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-60F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:285}},{}]}
execute if score # gameplay matches 6.. run summon armor_stand -309 -2 609 {Marker:1b,Invisible:1b,Tags:["npc","unclestart"],Pose:{RightArm:[0f,0f,0f]},Rotation:[133F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:285}},{}]}

kill @e[type=armor_stand,tag=npc,tag=owen]
execute as @e[type=item_display,tag=aj.owen.root] run function animated_java:owen/remove/this
execute if score # gameplay matches ..7 run summon armor_stand -365 0 721 {Marker:1b,Invisible:1b,Tags:["npc","owen"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-115F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:286}},{}]}
execute if score # gameplay matches 8.. run summon armor_stand -372 1 726 {Marker:1b,Invisible:1b,Tags:["npc","owen"],Pose:{RightArm:[0f,0f,0f]},Rotation:[24F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:286}},{}]}

kill @e[type=armor_stand,tag=npc,tag=bernard]
kill @e[type=armor_stand,tag=npc,tag=elisabeth]
kill @e[type=item_display,tag=npc,tag=neal,tag=!aj.neal.root]
execute as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/remove/this
execute as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/remove/this
execute as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/remove/this
execute if score # gameplay matches ..14 run summon armor_stand -227 -4 573 {Marker:1b,Invisible:1b,Tags:["npc","bernard"],Pose:{RightArm:[0f,0f,0f]},Rotation:[48F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:287}},{}]}
execute if score # gameplay matches ..14 run summon armor_stand -228 -4 572 {Marker:1b,Invisible:1b,Tags:["npc","elisabeth"],Pose:{RightArm:[0f,0f,0f]},Rotation:[51F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:288}},{}]}
execute if score # gameplay matches ..14 run summon item_display -226 -4 574 {Rotation:[45F,0F],Tags:["npc","neal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:289}}}
execute if score # gameplay matches 15.. run summon armor_stand -246 -6 730 {Marker:1b,Invisible:1b,Tags:["npc","bernard"],Pose:{RightArm:[0f,0f,0f]},Rotation:[54F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:287}},{}]}
execute if score # gameplay matches 15.. run summon armor_stand -247 -6 734 {Marker:1b,Invisible:1b,Tags:["npc","elisabeth"],Pose:{RightArm:[0f,0f,0f]},Rotation:[116F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:288}},{}]}
execute if score # gameplay matches 15.. run summon item_display -249 -1 718 {Rotation:[164F,0F],Tags:["npc","neal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:289}}}

execute as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/remove/this
kill @e[type=armor_stand,tag=npc,tag=melissa]
execute if score # gameplay matches ..14 run summon armor_stand -294 -9 637 {Marker:1b,Invisible:1b,Tags:["npc","melissa"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-103F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:290}},{}]}
execute if score # gameplay matches 15.. run summon armor_stand -295 -14 635 {Marker:1b,Invisible:1b,Tags:["npc","melissa"],Pose:{RightArm:[0f,0f,0f]},Rotation:[170F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:290}},{}]}

execute as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/remove/this
kill @e[type=armor_stand,tag=npc,tag=thaddeus]
summon armor_stand -410 -8 680 {Marker:1b,Invisible:1b,Tags:["npc","thaddeus"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:291}},{}]}
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score 4 quests_2_progress matches 2.. unless score 4 quests_2_completed matches 1 run tp @e[type=armor_stand,tag=thaddeus] -401 -11 711 42 0

execute as @e[type=item_display,tag=aj.percival.root] run function animated_java:percival/remove/this
kill @e[type=armor_stand,tag=npc,tag=percival]
execute if score # gameplay matches ..14 run summon armor_stand -295.25 -8.5 683 {Marker:1b,Invisible:1b,Tags:["npc","percival"],Pose:{RightArm:[0f,0f,0f]},Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:292}},{}]}
execute if score # gameplay matches 15.. run summon armor_stand -328 6 647 {Marker:1b,Invisible:1b,Tags:["npc","percival"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:306}},{}]}

execute as @e[type=item_display,tag=aj.amara.root] run function animated_java:amara/remove/this
kill @e[type=armor_stand,tag=npc,tag=amara]
execute if score # gameplay matches ..12 run summon armor_stand -294.25 -8.5 679 {Marker:1b,Invisible:1b,Tags:["npc","amara"],Pose:{RightArm:[0f,0f,0f]},Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:293}},{}]}
execute if score # gameplay matches 13.. run summon armor_stand -338 4 677 {Marker:1b,Invisible:1b,Tags:["npc","amara"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-62F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:308}},{}]}

execute as @e[type=item_display,tag=aj.fiona.root] run function animated_java:fiona/remove/this
kill @e[type=armor_stand,tag=npc,tag=fiona]
execute if score # gameplay matches ..14 run summon armor_stand -294.25 -8.5 677 {Marker:1b,Invisible:1b,Tags:["npc","fiona"],Pose:{RightArm:[0f,0f,0f]},Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:294}},{}]}
execute if score # gameplay matches 15.. run summon armor_stand -247 -6 725 {Marker:1b,Invisible:1b,Tags:["npc","fiona"],Pose:{RightArm:[0f,0f,0f]},Rotation:[114F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:311}},{}]}

execute as @e[type=item_display,tag=aj.lysander.root] run function animated_java:lysander/remove/this
kill @e[type=armor_stand,tag=npc,tag=lysander]
execute if score # gameplay matches ..14 run summon armor_stand -295.25 -8.5 675 {Marker:1b,Invisible:1b,Tags:["npc","lysander"],Pose:{RightArm:[0f,0f,0f]},Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:295}},{}]}
execute if score # gameplay matches 15.. run summon armor_stand -319 -1 714 {Marker:1b,Invisible:1b,Tags:["npc","lysander"],Pose:{RightArm:[0f,0f,0f]},Rotation:[46F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:307}},{}]}

execute as @e[type=item_display,tag=aj.bertram.root] run function animated_java:bertram/remove/this
kill @e[type=armor_stand,tag=npc,tag=bertram]
execute if score # gameplay matches ..14 run summon armor_stand -301 -7.8125 679 {Marker:1b,Invisible:1b,Tags:["npc","bertram"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:296}},{}]}
execute if score # gameplay matches 15.. run summon armor_stand -292 -5 665 {Marker:1b,Invisible:1b,Tags:["npc","bertram"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-36F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:296}},{}]}

execute as @e[type=item_display,tag=aj.agatha.root] run function animated_java:agatha/remove/this
kill @e[type=armor_stand,tag=npc,tag=agatha]
kill @e[type=cat,tag=agathacat]
summon armor_stand -296 -5 668 {Marker:1b,Invisible:1b,Tags:["npc","agatha"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-100F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:298}},{}]}
summon cat -296 -5 667 {Invulnerable:1b,NoAI:1b,Owner:[I;2119276449,-101957143,-1523254293,104690445],Sitting:1b,variant:"minecraft:persian",CollarColor:11b,Rotation:[-62F,0F],Tags:["agathacat"]}

execute as @e[type=item_display,tag=aj.tristan.root] run function animated_java:tristan/remove/this
kill @e[type=armor_stand,tag=npc,tag=tristan]
execute if score # gameplay matches ..12 run summon armor_stand -246 -11 631 {Marker:1b,Invisible:1b,Tags:["npc","tristan"],Pose:{RightArm:[0f,0f,0f]},Rotation:[67F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302}},{}]}
execute if score # gameplay matches 13.. run summon armor_stand -332 2 650 {Marker:1b,Invisible:1b,Tags:["npc","tristan"],Pose:{RightArm:[0f,0f,0f]},Rotation:[0F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:302}},{}]}

execute as @e[type=item_display,tag=aj.seraphina.root] run function animated_java:seraphina/remove/this
kill @e[type=armor_stand,tag=npc,tag=seraphina]
summon armor_stand -323 -1 714.7 {Marker:1b,Invisible:1b,Tags:["npc","seraphina"],Pose:{RightArm:[0f,0f,0f]},Rotation:[180F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:303}},{}]}

execute as @e[type=item_display,tag=aj.elowen.root] run function animated_java:elowen/remove/this
kill @e[type=armor_stand,tag=npc,tag=elowen]
summon armor_stand -338 4 683 {Marker:1b,Invisible:1b,Tags:["npc","elowen"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:304}},{}]}

execute as @e[type=item_display,tag=aj.gareth.root] run function animated_java:gareth/remove/this
kill @e[type=armor_stand,tag=npc,tag=gareth]
summon armor_stand -339 9.5 683 {Marker:1b,Invisible:1b,Tags:["npc","gareth"],Pose:{RightArm:[0f,0f,0f]},Rotation:[180F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:305}},{}]}

execute as @e[type=item_display,tag=aj.cedric.root] run function animated_java:cedric/remove/this
kill @e[type=armor_stand,tag=npc,tag=cedric]
summon armor_stand -252 -2 722 {Marker:1b,Invisible:1b,Tags:["npc","cedric"],Pose:{RightArm:[0f,0f,0f]},Rotation:[133F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:309}},{}]}

execute as @e[type=item_display,tag=aj.eamon.root] run function animated_java:eamon/remove/this
kill @e[type=armor_stand,tag=npc,tag=eamon]
summon armor_stand -252.0 -6 727 {Marker:1b,Invisible:1b,Tags:["npc","eamon"],Pose:{RightArm:[0f,0f,0f]},Rotation:[84F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:310}},{}]}

execute as @e[type=item_display,tag=aj.erin.root] run function animated_java:erin/remove/this
kill @e[type=armor_stand,tag=npc,tag=erin]
execute if score # gameplay matches ..13 run summon armor_stand -292 -9 644 {Marker:1b,Invisible:1b,Tags:["npc","erin"],Pose:{RightArm:[0f,0f,0f]},Rotation:[84F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:312}},{}]}
execute if score # gameplay matches 14.. run summon armor_stand -300 -13.4375 646 {Marker:1b,Invisible:1b,Tags:["npc","erin"],Pose:{RightArm:[0f,0f,0f]},Rotation:[84F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:312}},{}]}

execute as @e[type=item_display,tag=aj.alden.root] run function animated_java:alden/remove/this
kill @e[type=armor_stand,tag=npc,tag=alden]
summon armor_stand -288 -12 698 {Marker:1b,Invisible:1b,Tags:["npc","alden"],Pose:{RightArm:[0f,0f,0f]},Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:313}},{}]}

kill @e[type=wolf,tag=npc,tag=dog1]
summon wolf -246 -10 630 {Invulnerable:1b,NoAI:1b,Sitting:1b,Tags:["npc","dog1","dog"],Rotation:[77F,0F]}

kill @e[type=wolf,tag=npc,tag=dog2]
summon wolf -363 1 713 {Invulnerable:1b,NoAI:1b,Sitting:1b,Tags:["npc","dog2","dog"],Rotation:[-44F,0F]}

kill @e[type=item_display,tag=heartpiecelog]
execute if score heartpiecelog gameplay matches 1 run summon item_display -354 -7.5 669 {Tags:["heartpiecelog","permaloot"],item:{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:18}}}

##NPC Animations
execute at @p as @e[type=armor_stand,tag=npc,distance=..32] run function alttp:npc_animate
execute at @p as @e[type=item_display,tag=npc,distance=..32,tag=!aj.rig_root] run function alttp:npc_animate
execute at @p as @e[type=#animated_java:root,tag=npc,distance=32..] run function alttp:npc_unanimate