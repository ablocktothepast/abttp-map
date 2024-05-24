scoreboard players set active bm 1
scoreboard players set menu bm 0
scoreboard players set slot bm 0
scoreboard players set select bm 0

execute if score @p arrows matches 1.. run scoreboard players set @p hasquiver 1
execute if score @p bombs matches 1.. run scoreboard players set @p hasbombbag 1

function alttp:bm_entities
function alttp:bm_playerlock
execute at @p run function alttp:bm_indicators

##Bossbar instructions
bossbar remove bm_
bossbar add bm_ ""
bossbar set bm_ visible true
bossbar set bm_ players @p
bossbar set bm_ color white
bossbar set bm_ max 100
bossbar set bm_ value 100
bossbar remove bm
bossbar add bm [{"keybind":"key.attack"},{"text":" to select"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]
bossbar set bm visible true
bossbar set bm players @p
bossbar set bm color white
bossbar set bm max 100
bossbar set bm value 100

#Fovs
execute if score dlfov options matches 60 run effect give @p speed infinite 3 true

execute if score dlfov options matches 70 run effect give @p speed infinite 1 true

execute if score dlfov options matches 110 run effect give @p slowness infinite 2 true