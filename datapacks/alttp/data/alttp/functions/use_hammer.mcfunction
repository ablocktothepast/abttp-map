execute unless score . thirdperson matches 1 run function alttp:hammercheck
execute unless score . thirdperson matches 1 rotated ~ 0 positioned ^ ^ ^1.5 run function alttp:icehammercheck

execute if score . thirdperson matches 1 at @e[type=armor_stand,tag=thirdperson_player] rotated as @p run function alttp:hammercheck
execute if score . thirdperson matches 1 at @e[type=armor_stand,tag=thirdperson_player] rotated as @p rotated ~ 0 positioned ^ ^ ^1.5 run function alttp:icehammercheck