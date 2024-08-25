effect give @s invisibility 1 1 true
effect give @s resistance 1 255 true

execute if score . thirdperson matches 1 run data merge entity @e[type=armor_stand,tag=thirdperson_player,limit=1] {Invisible:1b}

team join mcape_friends @s