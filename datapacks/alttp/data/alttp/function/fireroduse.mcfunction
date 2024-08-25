execute if score @s magic matches 2.. run playsound minecraft:alttp.fire_rod weather @a

execute unless score @s magic matches 2.. run tellraw @s {"text":"You're out of magic!","color":"dark_red"}
execute if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;-390367052,-1969533757,-1809310301,-1667706241],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ4NTlmN2IzY2RmZGFkNDcxODI4ODRlMTI3ZjQ2MWZlOGY5ZmM1MmY3ZDE1MDQyN2MxMTcwNzliMDkyNGUzIn19fQ=="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["firerodball"]}
execute if score @s magic matches 2.. run tp @e[type=armor_stand,tag=firerodball,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if score @s magic matches 2.. run execute as @e[type=armor_stand,tag=firerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s magic matches 2.. run scoreboard players remove @s magic 2

execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;-390367052,-1969533757,-1809310301,-1667706241],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ4NTlmN2IzY2RmZGFkNDcxODI4ODRlMTI3ZjQ2MWZlOGY5ZmM1MmY3ZDE1MDQyN2MxMTcwNzliMDkyNGUzIn19fQ=="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["firerodball"]}
execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run tp @e[type=armor_stand,tag=firerodball,limit=1,sort=nearest] ~ ~ ~ ~20 ~
execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run execute as @e[type=armor_stand,tag=firerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run scoreboard players remove @s magic 2

execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;-390367052,-1969533757,-1809310301,-1667706241],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ4NTlmN2IzY2RmZGFkNDcxODI4ODRlMTI3ZjQ2MWZlOGY5ZmM1MmY3ZDE1MDQyN2MxMTcwNzliMDkyNGUzIn19fQ=="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["firerodball"]}
execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run tp @e[type=armor_stand,tag=firerodball,limit=1,sort=nearest] ~ ~ ~ ~-20 ~
execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run execute as @e[type=armor_stand,tag=firerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s spw_e_6 matches 1 if score @s magic matches 2.. run scoreboard players remove @s magic 2

scoreboard players set @s firerodcool 10
scoreboard players set @p rightclick 0
scoreboard players set @p spw_c_6 1

scoreboard players add @p st_firerod 1