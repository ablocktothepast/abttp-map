execute unless score tpbow dummy matches 1.. run function alttp:thirdperson/loop_start
execute if score tpbow dummy matches 1.. run function alttp:thirdperson/loop_start_bow
execute store result score tpair dummy run data get entity @e[type=area_effect_cloud,tag=thirdperson_marker,limit=1] Air
execute if score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=thirdperson_marker,limit=1] {Air:1}
execute unless score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=thirdperson_marker,limit=1] {Air:0}
ride @p mount @e[type=minecart,tag=thirdperson_minecart,limit=1]