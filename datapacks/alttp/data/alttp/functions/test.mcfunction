scoreboard players add musictest dummy 1
execute if score musictest dummy matches 145.. run scoreboard players set musictest dummy 1

execute if score musictest dummy matches 1 at @p run playsound test.main1 weather @p ~ ~ ~
execute if score musictest dummy matches 37 at @p run playsound test.main2 weather @p ~ ~ ~
execute if score musictest dummy matches 73 at @p run playsound test.main3 weather @p ~ ~ ~
execute if score musictest dummy matches 109 at @p run playsound test.main4 weather @p ~ ~ ~

execute if score mt dummy matches 1 if score musictest dummy matches 1 at @p run playsound test.bg1 weather @p ~ ~ ~
execute if score mt dummy matches 1 if score musictest dummy matches 37 at @p run playsound test.bg2 weather @p ~ ~ ~
execute if score mt dummy matches 1 if score musictest dummy matches 73 at @p run playsound test.bg3 weather @p ~ ~ ~
execute if score mt dummy matches 1 if score musictest dummy matches 109 at @p run playsound test.bg4 weather @p ~ ~ ~