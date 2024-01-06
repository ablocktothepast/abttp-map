scoreboard players set . gameplay 1
scoreboard players set # gameplay 1

function alttp:npcs/town
function alttp:shops_reset/oakheart_alden
function alttp:quests_reset
function alttp:interactmarker/0load_town
function alttp:doormarker/0load_oakheart
function alttp:intextmarker/0load_oakheart

gamerule sendCommandFeedback false

##Fading
tp @p -310 -14 601
kill @e[type=area_effect_cloud,tag=begin_aec]
kill @e[type=minecart,tag=begin_mc]
execute at @p run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:0,Tags:["begin_aec"],Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["begin_mc"]}]}
gamemode adventure @p
scoreboard players set id dialogue 1
execute as @p at @s run schedule function alttp:dialogue_start 2s

##Initiation
kill @e[tag=npc,tag=unclestart]
kill @e[tag=npcpath,tag=unclestart]
kill @e[tag=enemy]
time set noon
fill -307 -17 654 -307 -20 652 minecraft:iron_bars
fill -253 -9 638 -254 -11 637 iron_bars
fill -253 -11 637 -253 -9 637 air
title @p actionbar ""
bossbar set blackbars visible false
scoreboard players set townscene gameplay 0
scoreboard players set navblindness gameplay 0
scoreboard players set wakewhite gameplay 0
scoreboard players set applebasket gameplay 0
scoreboard players set melissawalk gameplay 0
scoreboard players set melissa_guide gameplay 0
scoreboard players set heartpiecelog gameplay 1

##Remove cobwebs
setblock -300 -14 636 air
setblock -302 -14 638 air
setblock -294 -14 637 air
setblock -293 -12 636 air
setblock -297 -14 639 air
setblock -294 -14 643 air
setblock -297 -14 641 air
setblock -297 -12 645 air
setblock -294 -14 646 air
setblock -292 -12 646 air
setblock -304 -12 645 air
setblock -301 -12 647 air
setblock -301 -14 647 air
setblock -309 -14 641 air
setblock -306 -12 641 air
setblock -308 -14 646 air
setblock -265 -3 595 air
setblock -267 -1 595 air
setblock -268 -3 592 air
setblock -247 -2 730 air
setblock -247 -2 735 air
setblock -253 -6 733 air
setblock -255 -5 730 air
setblock -251 -6 723 air
setblock -248 -6 723 air
setblock -326 -1 715 air
setblock -323 -1 717 air
setblock -318 -1 715 air
setblock -334 2 645 air
setblock -328 2 647 air
setblock -332 10 645 air
setblock -341 4 678 air
setblock -373 3 723 air
setblock -413 -5 678 air
setblock -408 -8 681 air

tag @p add interior
tag @p remove exterior