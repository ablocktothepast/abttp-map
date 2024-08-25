kill @e[type=armor_stand,tag=unclestart]
function animated_java:uncle_alphon/remove/all
execute if score # gameplay matches ..5 run summon armor_stand -316 -1 584 {HandItems:[{components:{"minecraft:custom_model_data":285},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-60.0f,0.0f],Tags:["npc","unclestart"]}
execute if score # gameplay matches 6.. run summon armor_stand -309 -2 609 {HandItems:[{components:{"minecraft:custom_model_data":285},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[133.0f,0.0f],Tags:["npc","unclestart"]}

kill @e[type=armor_stand,tag=npc,tag=owen]
execute as @e[type=item_display,tag=aj.owen.root] run function animated_java:owen/remove/this
execute if score # gameplay matches ..7 run summon armor_stand -365 0 721 {HandItems:[{components:{"minecraft:custom_model_data":286},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-115.0f,0.0f],Tags:["npc","owen"]}
execute if score # gameplay matches 8.. run summon armor_stand -372 1 726 {HandItems:[{components:{"minecraft:custom_model_data":286},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[24.0f,0.0f],Tags:["npc","owen"]}

kill @e[type=armor_stand,tag=npc,tag=bernard]
kill @e[type=armor_stand,tag=npc,tag=elisabeth]
kill @e[type=item_display,tag=npc,tag=neal,tag=!aj.neal.root]
execute as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/remove/this
execute as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/remove/this
execute as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/remove/this
execute if score # gameplay matches ..14 run summon armor_stand -227 -4 573 {HandItems:[{components:{"minecraft:custom_model_data":287},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[48.0f,0.0f],Tags:["npc","bernard"]}
execute if score # gameplay matches ..14 run summon armor_stand -228 -4 572 {HandItems:[{components:{"minecraft:custom_model_data":288},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[51.0f,0.0f],Tags:["npc","elisabeth"]}
execute if score # gameplay matches ..14 run summon item_display -226 -4 574 {Rotation:[45.0f,0.0f],Tags:["npc","neal"],item:{components:{"minecraft:custom_model_data":289},count:1,id:"minecraft:carrot_on_a_stick"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.75f,0.75f,0.75f],translation:[0.0f,0.6f,0.0f]}}
execute if score # gameplay matches 15.. run summon armor_stand -246 -6 730 {HandItems:[{components:{"minecraft:custom_model_data":287},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[54.0f,0.0f],Tags:["npc","bernard"]}
execute if score # gameplay matches 15.. run summon armor_stand -247 -6 734 {HandItems:[{components:{"minecraft:custom_model_data":288},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[116.0f,0.0f],Tags:["npc","elisabeth"]}
execute if score # gameplay matches 15.. run summon item_display -249 -1 718 {Rotation:[164.0f,0.0f],Tags:["npc","neal"],item:{components:{"minecraft:custom_model_data":289},count:1,id:"minecraft:carrot_on_a_stick"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.75f,0.75f,0.75f],translation:[0.0f,0.6f,0.0f]}}

execute as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/remove/this
kill @e[type=armor_stand,tag=npc,tag=melissa]
execute if score # gameplay matches ..14 run summon armor_stand -294 -9 637 {HandItems:[{components:{"minecraft:custom_model_data":290},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-103.0f,0.0f],Tags:["npc","melissa"]}
execute if score # gameplay matches 15.. run summon armor_stand -295 -14 635 {HandItems:[{components:{"minecraft:custom_model_data":290},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[170.0f,0.0f],Tags:["npc","melissa"]}

execute as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/remove/this
kill @e[type=armor_stand,tag=npc,tag=thaddeus]
summon armor_stand -410 -8 680 {HandItems:[{components:{"minecraft:custom_model_data":291},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-90.0f,0.0f],Tags:["npc","thaddeus"]}
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score 4 quests_2_progress matches 2.. unless score 4 quests_2_completed matches 1 run tp @e[type=armor_stand,tag=thaddeus] -401 -11 711 42 0

execute as @e[type=item_display,tag=aj.percival.root] run function animated_java:percival/remove/this
kill @e[type=armor_stand,tag=npc,tag=percival]
execute if score # gameplay matches ..14 run summon armor_stand -295.25 -8.5 683 {HandItems:[{components:{"minecraft:custom_model_data":292},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90.0f,0.0f],Tags:["npc","percival"]}
execute if score # gameplay matches 15.. run summon armor_stand -328 6 647 {HandItems:[{components:{"minecraft:custom_model_data":306},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-90.0f,0.0f],Tags:["npc","percival"]}

execute as @e[type=item_display,tag=aj.amara.root] run function animated_java:amara/remove/this
kill @e[type=armor_stand,tag=npc,tag=amara]
execute if score # gameplay matches ..12 run summon armor_stand -294.25 -8.5 679 {HandItems:[{components:{"minecraft:custom_model_data":293},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90.0f,0.0f],Tags:["npc","amara"]}
execute if score # gameplay matches 13.. run summon armor_stand -338 4 677 {HandItems:[{components:{"minecraft:custom_model_data":308},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-62.0f,0.0f],Tags:["npc","amara"]}

execute as @e[type=item_display,tag=aj.fiona.root] run function animated_java:fiona/remove/this
kill @e[type=armor_stand,tag=npc,tag=fiona]
execute if score # gameplay matches ..14 run summon armor_stand -294.25 -8.5 677 {HandItems:[{components:{"minecraft:custom_model_data":294},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90.0f,0.0f],Tags:["npc","fiona"]}
execute if score # gameplay matches 15.. run summon armor_stand -247 -6 725 {HandItems:[{components:{"minecraft:custom_model_data":311},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[114.0f,0.0f],Tags:["npc","fiona"]}

execute as @e[type=item_display,tag=aj.lysander.root] run function animated_java:lysander/remove/this
kill @e[type=armor_stand,tag=npc,tag=lysander]
execute if score # gameplay matches ..14 run summon armor_stand -295.25 -8.5 675 {HandItems:[{components:{"minecraft:custom_model_data":295},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90.0f,0.0f],Tags:["npc","lysander"]}
execute if score # gameplay matches 15.. run summon armor_stand -319 -1 714 {HandItems:[{components:{"minecraft:custom_model_data":307},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[46.0f,0.0f],Tags:["npc","lysander"]}

execute as @e[type=item_display,tag=aj.bertram.root] run function animated_java:bertram/remove/this
kill @e[type=armor_stand,tag=npc,tag=bertram]
execute if score # gameplay matches ..14 run summon armor_stand -301 -7.8125 679 {HandItems:[{components:{"minecraft:custom_model_data":296},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-90.0f,0.0f],Tags:["npc","bertram"]}
execute if score # gameplay matches 15.. run summon armor_stand -292 -5 665 {HandItems:[{components:{"minecraft:custom_model_data":296},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-36.0f,0.0f],Tags:["npc","bertram"]}

execute as @e[type=item_display,tag=aj.agatha.root] run function animated_java:agatha/remove/this
kill @e[type=armor_stand,tag=npc,tag=agatha]
kill @e[type=cat,tag=agathacat]
summon armor_stand -296 -5 668 {HandItems:[{components:{"minecraft:custom_model_data":298},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-100.0f,0.0f],Tags:["npc","agatha"]}
summon cat -296 -5 667 {CollarColor:11b,Invulnerable:1b,NoAI:1b,Owner:[I;2119276449,-101957143,-1523254293,104690445],Rotation:[-62.0f,0.0f],Sitting:1b,Tags:["agathacat"],variant:"minecraft:persian"}

execute as @e[type=item_display,tag=aj.tristan.root] run function animated_java:tristan/remove/this
kill @e[type=armor_stand,tag=npc,tag=tristan]
execute if score # gameplay matches ..12 run summon armor_stand -246 -11 631 {HandItems:[{components:{"minecraft:custom_model_data":302},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[67.0f,0.0f],Tags:["npc","tristan"]}
execute if score # gameplay matches 13.. run summon armor_stand -332 2 650 {HandItems:[{components:{"minecraft:custom_model_data":302},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[0.0f,0.0f],Tags:["npc","tristan"]}

execute as @e[type=item_display,tag=aj.seraphina.root] run function animated_java:seraphina/remove/this
kill @e[type=armor_stand,tag=npc,tag=seraphina]
summon armor_stand -323 -1 714.7 {HandItems:[{components:{"minecraft:custom_model_data":303},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[180.0f,0.0f],Tags:["npc","seraphina"]}

execute as @e[type=item_display,tag=aj.elowen.root] run function animated_java:elowen/remove/this
kill @e[type=armor_stand,tag=npc,tag=elowen]
summon armor_stand -338 4 683 {HandItems:[{components:{"minecraft:custom_model_data":304},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-90.0f,0.0f],Tags:["npc","elowen"]}

execute as @e[type=item_display,tag=aj.gareth.root] run function animated_java:gareth/remove/this
kill @e[type=armor_stand,tag=npc,tag=gareth]
summon armor_stand -339 9.5 683 {HandItems:[{components:{"minecraft:custom_model_data":305},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[180.0f,0.0f],Tags:["npc","gareth"]}

execute as @e[type=item_display,tag=aj.cedric.root] run function animated_java:cedric/remove/this
kill @e[type=armor_stand,tag=npc,tag=cedric]
summon armor_stand -252 -2 722 {HandItems:[{components:{"minecraft:custom_model_data":309},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[133.0f,0.0f],Tags:["npc","cedric"]}

execute as @e[type=item_display,tag=aj.eamon.root] run function animated_java:eamon/remove/this
kill @e[type=armor_stand,tag=npc,tag=eamon]
summon armor_stand -252.0 -6 727 {HandItems:[{components:{"minecraft:custom_model_data":310},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[84.0f,0.0f],Tags:["npc","eamon"]}

execute as @e[type=item_display,tag=aj.erin.root] run function animated_java:erin/remove/this
kill @e[type=armor_stand,tag=npc,tag=erin]
execute if score # gameplay matches ..13 run summon armor_stand -292 -9 644 {HandItems:[{components:{"minecraft:custom_model_data":312},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[84.0f,0.0f],Tags:["npc","erin"]}
execute if score # gameplay matches 14.. run summon armor_stand -300 -13.4375 646 {HandItems:[{components:{"minecraft:custom_model_data":312},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[84.0f,0.0f],Tags:["npc","erin"]}

execute as @e[type=item_display,tag=aj.alden.root] run function animated_java:alden/remove/this
kill @e[type=armor_stand,tag=npc,tag=alden]
summon armor_stand -288 -12 698 {HandItems:[{components:{"minecraft:custom_model_data":313},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[-90.0f,0.0f],Tags:["npc","alden"]}

kill @e[type=wolf,tag=npc,tag=dog1]
summon wolf -246 -10 630 {Invulnerable:1b,NoAI:1b,Rotation:[77.0f,0.0f],Sitting:1b,Tags:["npc","dog1","dog"]}

kill @e[type=wolf,tag=npc,tag=dog2]
summon wolf -363 1 713 {Invulnerable:1b,NoAI:1b,Rotation:[-44.0f,0.0f],Sitting:1b,Tags:["npc","dog2","dog"]}

kill @e[type=item_display,tag=heartpiecelog]
execute if score heartpiecelog gameplay matches 1 run summon item_display -354 -7.5 669 {Tags:["heartpiecelog","permaloot"],item:{components:{"minecraft:custom_model_data":18},count:1,id:"minecraft:turtle_scute"}}

##NPC Animations
execute at @p as @e[type=armor_stand,tag=npc,distance=..32] run function alttp:npc_animate
execute at @p as @e[type=item_display,tag=npc,distance=..32,tag=!aj.rig_root] run function alttp:npc_animate
execute at @p as @e[type=#animated_java:root,tag=npc,distance=32..] run function alttp:npc_unanimate