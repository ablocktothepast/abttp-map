execute at @p run tp @e[type=interaction,tag=thirdperson_interaction] ~ ~-20 ~

execute if score @p endereye matches 1 unless score tpbow dummy matches 1 run schedule function alttp:thirdperson/camera 1t
execute if score @p endereye matches 1 unless score tpbow dummy matches 1 run scoreboard players set tpbow dummy 1
# execute if data entity @e[type=interaction,tag=thirdperson_interaction,limit=1] attack run function alttp:thirdperson/bowshoot
execute if score tpbow dummy matches 1 if score @p endereye matches 0 unless score tpbowend dummy matches 1.. if score @p arrows matches 1.. run function alttp:thirdperson/bowshoot
execute if score tpbow dummy matches 1 if score @p endereye matches 0 unless score tpbowend dummy matches 1.. run scoreboard players set tpbowend dummy 10
execute if score tpbow dummy matches 1 if score @p endereye matches 0 if score tpbowend dummy matches 1 run schedule function alttp:thirdperson/camera 1t
execute if score tpbow dummy matches 1 if score @p endereye matches 0 if score tpbowend dummy matches 1 run scoreboard players set tpbow dummy 0

execute if score tpbowend dummy matches 1.. run scoreboard players remove tpbowend dummy 1