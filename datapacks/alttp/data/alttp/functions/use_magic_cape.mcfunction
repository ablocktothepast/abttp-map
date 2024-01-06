execute unless score @s spw_e_15 matches 1 unless score @s magic matches 10.. run tellraw @p {"text":"You're out of magic!","color":"dark_red"}
execute unless score @s spw_e_15 matches 1 if score @s magic matches 10.. run scoreboard players set @s mcaped 100
execute unless score @s spw_e_15 matches 1 if score @s magic matches 10.. run scoreboard players set @s spw_c_15 1
execute unless score @s spw_e_15 matches 1 if score @s magic matches 10.. run playsound block.brewing_stand.brew weather @p ~ ~ ~ 10000 1.1
execute unless score @s spw_e_15 matches 1 if score @s magic matches 10.. if score . thirdperson matches 1 run data modify storage thirdperson ArmorItems set from entity @e[type=armor_stand,tag=thirdperson_player,limit=1] ArmorItems
execute unless score @s spw_e_15 matches 1 if score @s magic matches 10.. if score . thirdperson matches 1 run item replace entity @e[type=armor_stand,tag=thirdperson_player,limit=1] armor.head with air
execute unless score @s spw_e_15 matches 1 if score @s magic matches 10.. run scoreboard players remove @s magic 10

execute if score @s spw_e_15 matches 1 unless score @s magic matches 7.. run tellraw @p {"text":"You're out of magic!","color":"dark_red"}
execute if score @s spw_e_15 matches 1 if score @s magic matches 7.. run scoreboard players set @s mcaped 150
execute if score @s spw_e_15 matches 1 if score @s magic matches 7.. run scoreboard players set @s spw_c_15 1
execute if score @s spw_e_15 matches 1 if score @s magic matches 7.. run playsound block.brewing_stand.brew weather @p ~ ~ ~ 10000 1.1
execute if score @s spw_e_15 matches 1 if score @s magic matches 7.. if score . thirdperson matches 1 run data modify storage thirdperson ArmorItems set from entity @e[type=armor_stand,tag=thirdperson_player,limit=1] ArmorItems
execute if score @s spw_e_15 matches 1 if score @s magic matches 7.. if score . thirdperson matches 1 run item replace entity @e[type=armor_stand,tag=thirdperson_player,limit=1] armor.head with air
execute if score @s spw_e_15 matches 1 if score @s magic matches 7.. run scoreboard players remove @s magic 7