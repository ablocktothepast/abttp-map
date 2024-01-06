data merge entity @e[type=item_display,tag=chestlink_b,limit=1] {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:125}}}
execute if entity @s[tag=big] run data merge entity @e[type=item_display,tag=chestlink_b,limit=1] {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:165}}}
tag @e[type=item_display,tag=chestlink_b,limit=1] add opened
tag @s add opened
playsound block.chest.open weather @p ~ ~ ~ 100000
scoreboard players set @p pegasussneak 0


#FOR SPECIFIC ITEMS
#MODEL
execute if entity @s[tag=greenrupee] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["greenrupee","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]}
execute if entity @s[tag=50rupees] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["50rupees","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:2}}]}
execute if entity @s[tag=100rupees] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["100rupees","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[tag=300rupees] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["300rupees","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:4}}]}
execute if entity @s[tag=arrows1] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["arrows1","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:5}}]}
execute if entity @s[tag=arrows5] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["arrows5","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:6}}]}
execute if entity @s[tag=arrows10] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["arrows10","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:7}}]}
execute if entity @s[tag=bombs1] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bombs1","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:8}}]}
execute if entity @s[tag=bombs4] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bombs4","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:9}}]}
execute if entity @s[tag=bombs8] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bombs8","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:10}}]}
execute if entity @s[tag=bombs10] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bombs10","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:11}}]}
execute if entity @s[tag=smallkey] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["smallkey","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:15}}]}
execute if entity @s[tag=bigkey] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bigkey","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[tag=bluerupee] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bluerupee","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]}
execute if entity @s[tag=bigmagic] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bigmagic","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:raw_iron",Count:1b}]}
execute if entity @s[tag=redrupee] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["redrupee","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:12}}]}
execute if entity @s[tag=bluemail] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bluemail","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[tag=boomerangy] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Marker:1b,Invisible:1b,Tags:["boomerangy","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:activator_rail",Count:0b,tag:{CustomModelData:33}}]}
execute if entity @s[tag=bottle] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bottle","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:46}}]}
execute if entity @s[tag=caneofbyrna] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["caneofbyrna","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:61}}]}
execute if entity @s[tag=icerod] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["icerod","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}]}
execute if entity @s[tag=lamp] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["lamp","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:lantern",Count:1b}]}
execute if entity @s[tag=heartpiece] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["heartpiece","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:18}}]}
execute if entity @s[tag=magiccape] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["magiccape","chestitem"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:58}}]}
execute if entity @s[tag=bow] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["bow","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:bow",Count:1b,tag:{}}]}
execute if entity @s[tag=powerglove] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["powerglove","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:54}}]}
execute if entity @s[tag=moonpearl] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["moonpearl","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:heart_of_the_sea",Count:1b,tag:{}}]}
execute if entity @s[tag=magichammer] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["magichammer","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:62}}]}
execute if entity @s[tag=hookshot] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["hookshot","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:7}}]}
execute if entity @s[tag=firerod] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["firerod","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}]}
execute if entity @s[tag=titansmitt] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["titansmitt","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:63}}]}
execute if entity @s[tag=caneofsomaria] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["caneofsomaria","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:60}}]}
execute if entity @s[tag=mirrorshield] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["mirrorshield","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:166}}]}
execute if entity @s[tag=redmail] run summon armor_stand ~ ~-2 ~ {Marker:1b,Invisible:1b,Tags:["redmail","chestitem","big"],ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:19}}]}
#SOUND
playsound minecraft:alttp.itemget weather @p ~ ~ ~ 10000
execute if entity @s[tag=greenrupee] run playsound alttp.wallet weather @p ~ ~ ~ 10000
execute if entity @s[tag=bluerupee] run playsound alttp.wallet weather @p ~ ~ ~ 10000
execute if entity @s[tag=redrupee] run playsound alttp.wallet weather @p ~ ~ ~ 10000
execute if entity @s[tag=50rupees] run playsound alttp.wallet weather @p ~ ~ ~ 10000
execute if entity @s[tag=100rupees] run playsound alttp.wallet weather @p ~ ~ ~ 10000
execute if entity @s[tag=300rupees] run playsound alttp.wallet weather @p ~ ~ ~ 10000
execute if entity @s[tag=smallkey] run playsound alttp.key weather @p ~ ~ ~ 10000
execute if entity @s[tag=bigkey] run playsound alttp.key weather @p ~ ~ ~ 10000
execute if entity @s[tag=heartpiece] run playsound alttp.heartpiece weather @p ~ ~ ~ 10000
execute if entity @s[tag=bigmagic] run playsound minecraft:alttp.heart weather @p ~ ~ ~ 10000
#ITEM
execute if entity @s[tag=bigmagic] run scoreboard players add @p magic 30
execute if entity @s[tag=greenrupee] run scoreboard players add @p rupees 1
execute if entity @s[tag=bluerupee] run scoreboard players add @p rupees 5
execute if entity @s[tag=redrupee] run scoreboard players add @p rupees 10
execute if entity @s[tag=50rupees] run scoreboard players add @p rupees 50
execute if entity @s[tag=100rupees] run scoreboard players add @p rupees 100
execute if entity @s[tag=300rupees] run scoreboard players add @p rupees 300
execute if entity @s[tag=arrows1] run scoreboard players add @p arrows 1
execute if entity @s[tag=arrows5] run scoreboard players add @p arrows 5
execute if entity @s[tag=arrows10] run scoreboard players add @p arrows 10
execute if entity @s[tag=bombs1] run scoreboard players add @p bombs 1
execute if entity @s[tag=bombs4] run scoreboard players add @p bombs 4
execute if entity @s[tag=bombs8] run scoreboard players add @p bombs 8
execute if entity @s[tag=bombs10] run scoreboard players add @p bombs 10
execute if entity @s[tag=smallkey] run say You're not in a dungeon!
execute if entity @s[tag=bigkey] run say You're not in a dungeon!
execute if entity @s[tag=bluemail] if score @p armortier matches ..1 run scoreboard players set @p armortier 2
execute if entity @s[tag=boomerangy] run scoreboard players set @p spw_u_2 1
execute if entity @s[tag=bottle] as @p run function alttp:give/empty_bottle
execute if entity @s[tag=caneofbyrna] run scoreboard players set @p spw_u_17 1
execute if entity @s[tag=icerod] run scoreboard players set @p spw_u_7 1
execute if entity @s[tag=lamp] run scoreboard players set @p spw_u_1 1
execute if entity @s[tag=heartpiece] as @p run function alttp:give/heart_piece
execute if entity @s[tag=magiccape] run scoreboard players set @p spw_u_15 1
execute if entity @s[tag=bow] run scoreboard players set @p hasbow 1
execute if entity @s[tag=powerglove] run scoreboard players set @p handtier 1
execute if entity @s[tag=moonpearl] run scoreboard players set @p hasmoonpearl 1
execute if entity @s[tag=magichammer] run scoreboard players set @p spw_u_18 1
execute if entity @s[tag=hookshot] run scoreboard players set @p spw_u_3 1
execute if entity @s[tag=firerod] run scoreboard players set @p spw_u_6 1
execute if entity @s[tag=titansmitt] run scoreboard players set @p handtier 2
execute if entity @s[tag=caneofsomaria] run scoreboard players set @p spw_u_16 1
execute if entity @s[tag=mirrorshield] run scoreboard players set @p shieldtier 3
execute if entity @s[tag=redmail] run scoreboard players set @p armortier 3

#THE ALIGNMENT
tp @e[type=armor_stand,tag=chestitem,tag=!boomerangy,limit=1,sort=nearest,tag=!inited,tag=!big,tag=!bigmagic] ^ ^-2 ^-0.4 ~ ~
tp @e[type=armor_stand,tag=chestitem,tag=boomerangy,limit=1,sort=nearest,tag=!inited] ^ ^-1.2 ^0.4 ~ ~
tp @e[type=armor_stand,tag=chestitem,tag=bigmagic,limit=1,sort=nearest,tag=!inited] ^ ^-2 ^-0.2 ~ ~
tp @e[type=armor_stand,tag=chestitem,tag=big,limit=1,sort=nearest,tag=!inited] ^-0.5 ^-2 ^-0.4 ~ ~
tag @e[type=armor_stand,tag=chestitem] add inited
#THE KILLING
kill @s