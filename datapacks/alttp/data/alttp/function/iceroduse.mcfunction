execute if score @s magic matches 2.. run playsound minecraft:alttp.ice_rod weather @a

execute unless score @s magic matches 2.. run tellraw @s {"text":"You're out of magic!","color":"dark_red"}
execute if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;1188610083,-975484637,-1252568678,182649834],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlMWM1ZTY1ZTEzNTU5YmY2MGUxNTRmMTdmNmFmM2E4ZTU2MDhhNDk4N2VjZDFlMGZhZTc1MWM2ZjgyNzI2In19fQ=="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["icerodball"]}
execute if score @s magic matches 2.. run tp @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if score @s magic matches 2.. as @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s magic matches 2.. run scoreboard players remove @s magic 2

execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;1188610083,-975484637,-1252568678,182649834],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlMWM1ZTY1ZTEzNTU5YmY2MGUxNTRmMTdmNmFmM2E4ZTU2MDhhNDk4N2VjZDFlMGZhZTc1MWM2ZjgyNzI2In19fQ=="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["icerodball"]}
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run tp @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] ~ ~ ~ ~20 ~
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. as @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run scoreboard players remove @s magic 2

execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;1188610083,-975484637,-1252568678,182649834],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlMWM1ZTY1ZTEzNTU5YmY2MGUxNTRmMTdmNmFmM2E4ZTU2MDhhNDk4N2VjZDFlMGZhZTc1MWM2ZjgyNzI2In19fQ=="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["icerodball"]}
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run tp @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] ~ ~ ~ ~-20 ~
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. as @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run scoreboard players remove @s magic 2

scoreboard players set @s icerodcool 10
scoreboard players set @p rightclick 0
scoreboard players set @p spw_c_7 1

scoreboard players add @p st_icerod 1