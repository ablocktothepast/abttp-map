effect clear @s invisibility
effect clear @s resistance
team empty mcape_friends
scoreboard players set @s spw_c_15 0

scoreboard players set @s mcaped -1

execute if score . thirdperson matches 1 run data modify entity @e[type=armor_stand,tag=thirdperson_player,limit=1] ArmorItems set from storage thirdperson ArmorItems
execute if score . thirdperson matches 1 run data merge entity @e[type=armor_stand,tag=thirdperson_player,limit=1] {Invisible:0b}