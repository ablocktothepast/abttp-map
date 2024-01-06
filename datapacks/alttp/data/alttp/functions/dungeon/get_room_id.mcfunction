execute store result storage roomid x int 1 run data get entity @e[type=marker,tag=door_loc_detect,tag=!closest,limit=1] Pos[0]
execute store result storage roomid y int 1 run data get entity @e[type=marker,tag=door_loc_detect,tag=!closest,limit=1] Pos[1]
execute store result storage roomid z int 1 run data get entity @e[type=marker,tag=door_loc_detect,tag=!closest,limit=1] Pos[2]

function alttp:dungeon/macro_room_id with storage roomid