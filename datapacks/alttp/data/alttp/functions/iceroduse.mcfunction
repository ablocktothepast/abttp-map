execute if score @s magic matches 2.. run playsound minecraft:alttp.ice_rod weather @a

execute unless score @s magic matches 2.. run tellraw @s {"text":"You're out of magic!","color":"dark_red"}
execute if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["icerodball"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1188610083,-975484637,-1252568678,182649834],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlMWM1ZTY1ZTEzNTU5YmY2MGUxNTRmMTdmNmFmM2E4ZTU2MDhhNDk4N2VjZDFlMGZhZTc1MWM2ZjgyNzI2In19fQ=="}]}}}}]}
execute if score @s magic matches 2.. run tp @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if score @s magic matches 2.. as @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s magic matches 2.. run scoreboard players remove @s magic 2

execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["icerodball"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1188610083,-975484637,-1252568678,182649834],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlMWM1ZTY1ZTEzNTU5YmY2MGUxNTRmMTdmNmFmM2E4ZTU2MDhhNDk4N2VjZDFlMGZhZTc1MWM2ZjgyNzI2In19fQ=="}]}}}}]}
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run tp @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] ~ ~ ~ ~20 ~
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. as @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run scoreboard players remove @s magic 2

execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["icerodball"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1188610083,-975484637,-1252568678,182649834],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNlMWM1ZTY1ZTEzNTU5YmY2MGUxNTRmMTdmNmFmM2E4ZTU2MDhhNDk4N2VjZDFlMGZhZTc1MWM2ZjgyNzI2In19fQ=="}]}}}}]}
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run tp @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] ~ ~ ~ ~-20 ~
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. as @e[type=armor_stand,tag=icerodball,limit=1,sort=nearest] at @s run tp ^ ^ ^1.5
execute if score @s spw_e_7 matches 1 if score @s magic matches 2.. run scoreboard players remove @s magic 2

scoreboard players set @s icerodcool 10
scoreboard players set @p rightclick 0
scoreboard players set @p spw_c_7 1

scoreboard players add @p st_icerod 1