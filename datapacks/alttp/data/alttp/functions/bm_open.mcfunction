scoreboard players set active bm 1
scoreboard players set menu bm 0
scoreboard players set slot bm 0

function alttp:bm_entities
function alttp:bm_playerlock

##Bossbar instructions
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