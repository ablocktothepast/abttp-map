scoreboard players add lowhpsound dummy 1
execute if score lowhpsound dummy matches 20.. at @p run playsound alttp.low_hp weather @p ~ ~ ~
execute if score lowhpsound dummy matches 20.. run scoreboard players set lowhpsound dummy 0