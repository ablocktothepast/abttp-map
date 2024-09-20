#POTS
#function alttp:reset/pots

#LEAVES
#function alttp:reset/leaves

#EMPTY LAMPS
#function alttp:reset/lamps

#DUNGEON STATISTICS
function alttp:dungeonstatsreset

#OTHER

#data merge block 202 -31 25 {Items:[{Slot:13b,id:"minecraft:emerald",Count:1b,tag:{display:{Name:'{"text":"Blue Rupee","color":"aqua","italic":false}',Lore:['{"text":"Worth 5 rupees!","color":"white","italic":false}']}}}]}
#data merge block -6 -24 10 {Items:[{Slot:13b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Lamp","color":"#FCBA03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3}}]}
#setblock 70 -63 20 air
#execute as @e[tag=unclesword] at @s run tp @s 213.270138 -42.5 9.599719
#execute as @e[tag=uncleshield] at @s run tp @s 212.152274 -42.77 9.747410

#ENEMIES
kill @e[tag=enemy,type=!player,tag=!dummy_vi]
#function alttp:reset/enemysummons

#SCORES
scoreboard players set @a rupees 0
scoreboard players set @a bombs 0
scoreboard players set @a magic 0
scoreboard players set @a arrows 0
scoreboard players set @a magicmax 60
scoreboard players set @a firerodcool -1
scoreboard players set @a korokcount 0
scoreboard players set @a snowyprog 1
scoreboard players set @a st_boomerang 0
scoreboard players set @a st_bomb 0
scoreboard players set @a st_firerod 0
scoreboard players set @a st_icerod 0
scoreboard players set @a st_pegasus 0
scoreboard players set @a st_lamp 0
scoreboard players set @a extrahearts 0
scoreboard players set cukesphere_looted dummy 0
scoreboard players set @a swordtier 0
scoreboard players set @a shieldtier 0
scoreboard players set @a hasbow 0
scoreboard players set @a spw_1 0
scoreboard players set @a spw_2 0
scoreboard players set @a spw_3 0
scoreboard players set @a spw_s 0
scoreboard players set @a spw_u_1 0
scoreboard players set @a spw_u_2 0
scoreboard players set @a spw_u_3 0
scoreboard players set @a spw_u_4 0
scoreboard players set @a spw_u_5 0
scoreboard players set @a spw_u_6 0
scoreboard players set @a spw_u_7 0
scoreboard players set @a spw_u_8 0
scoreboard players set @a spw_u_9 0
scoreboard players set @a spw_u_10 0
scoreboard players set @a spw_u_11 0
scoreboard players set @a spw_u_12 0
scoreboard players set @a spw_u_13 0
scoreboard players set @a spw_u_14 0
scoreboard players set @a spw_u_15 0
scoreboard players set @a spw_u_16 0
scoreboard players set @a spw_u_17 0
scoreboard players set @a spw_u_18 0
scoreboard players set @a spw_u_19 0
scoreboard players set @a spw_u_20 0
scoreboard players set @a spw_u_21 0
scoreboard players set @a spw_u_22 0
scoreboard players set @a spw_u_23 0
scoreboard players set @a spw_u_24 0
scoreboard players set @a spw_u_25 0
scoreboard players set @a spw_u_26 0
scoreboard players set @a arrowsmax 30
scoreboard players set @a bombsmax 10
scoreboard players set @a haspegasus 0
scoreboard players set @a spw_c_2 0
scoreboard players set @a spw_c_5 0
scoreboard players set @a spw_c_6 0
scoreboard players set @a spw_c_11 0
scoreboard players set @a bombostick -1
scoreboard players set @a rupeesmax 999
scoreboard players set @a spw_e_6 0
scoreboard players set @a spw_e_7 0
scoreboard players set @a spw_e_3 0
scoreboard players set @a spw_e_5 0
scoreboard players set @a spw_e_1 0
scoreboard players set @a spw_e_10 0
scoreboard players set @a spw_e_11 0
scoreboard players set @a spw_e_12 0
scoreboard players set @a hasflippers 0
scoreboard players set @a armortier 1
scoreboard players set @a hasmoonpearl 0
scoreboard players set @a hassilverarrows 0
scoreboard players set @a boomerangtier 1
scoreboard players set @a spw_e_14 0
scoreboard players set @a spw_e_15 0
scoreboard players set @a spw_e_16 0
scoreboard players set @a spw_e_17 0
scoreboard players set @a spw_e_18 0
scoreboard players set @a handtier 0
scoreboard players set @a arrows_fire 0
scoreboard players set @a arrows_ice 0
scoreboard players set @a arrows_silver 0
scoreboard players set @a arrows_bomb 0
scoreboard players set dlspeed options 2
scoreboard players set dlfov options 90
scoreboard players set @a flippers 300
scoreboard players set @a drowning 300
scoreboard players set $strength delta.api.launch 10000
scoreboard players set @a bottle_1 -1
scoreboard players set @a bottle_2 -1
scoreboard players set @a bottle_3 -1
scoreboard players set @a bottle_4 -1
scoreboard players set @a pendant_courage 0
scoreboard players set @a pendant_power 0
scoreboard players set @a pendant_wisdom 0
scoreboard players set @a crystal_1 0
scoreboard players set @a crystal_2 0
scoreboard players set @a crystal_3 0
scoreboard players set @a crystal_4 0
scoreboard players set @a crystal_5 0
scoreboard players set @a crystal_6 0
scoreboard players set @a crystal_7 0
scoreboard players set @a hasbombbag 0
scoreboard players set @a hasquestbook 0
scoreboard players set @a rupeepouchlevel 0
scoreboard players set @a quiverlevel 0

scoreboard objectives remove keys
scoreboard objectives add keys dummy

experience set @p 0 levels
experience set @p 0 points

gamemode adventure @a

effect give @p regeneration 2 255 true