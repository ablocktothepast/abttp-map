#Reset titles
data modify entity @e[tag=km,tag=title1,limit=1] text set value '""'
data modify entity @e[tag=km,tag=title2,limit=1] text set value '""'
data modify entity @e[tag=km,tag=title3,limit=1] text set value '""'
data modify entity @e[tag=km,tag=title4,limit=1] text set value '""'
scoreboard players set km0 bm 1
scoreboard players set km1 bm 0
scoreboard players set km2 bm 0
scoreboard players set km3 bm 0
scoreboard players set km4 bm 0

#First key
$data modify entity @e[tag=km,tag=title1,limit=1] text set from storage keys keys[$(scroll1)].name
$data modify entity @e[tag=km,tag=icon1,limit=1] text set from storage keys keys[$(scroll1)].icon

#Is there second key?
$execute store result score testkey dummy run data get storage keys keys[$(scroll2)].id
execute unless score testkey dummy matches 1.. run return 0
scoreboard players set km1 bm 1

#Second key
$data modify entity @e[tag=km,tag=title2,limit=1] text set from storage keys keys[$(scroll2)].name
$data modify entity @e[tag=km,tag=icon2,limit=1] text set from storage keys keys[$(scroll2)].icon

#Is there third key?
$execute store result score testkey dummy run data get storage keys keys[$(scroll3)].id
execute unless score testkey dummy matches 1.. run return 0
scoreboard players set km2 bm 1

#Third key
$data modify entity @e[tag=km,tag=title3,limit=1] text set from storage keys keys[$(scroll3)].name
$data modify entity @e[tag=km,tag=icon3,limit=1] text set from storage keys keys[$(scroll3)].icon

#Is there fourth key?
$execute store result score testkey dummy run data get storage keys keys[$(scroll4)].id
execute unless score testkey dummy matches 1.. run return 0
scoreboard players set km3 bm 1

#Third key
$data modify entity @e[tag=km,tag=title4,limit=1] text set from storage keys keys[$(scroll4)].name
$data modify entity @e[tag=km,tag=icon4,limit=1] text set from storage keys keys[$(scroll4)].icon

#Is there fifth key?
$execute store result score testkey dummy run data get storage keys keys[$(scroll5)].id
execute unless score testkey dummy matches 1.. run return 0
scoreboard players set km4 bm 1