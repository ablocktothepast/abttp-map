data modify storage load 1 set value ""
data modify storage load 2 set value ""
data modify storage load 3 set value ""
data modify storage load 4 set value ""
data modify storage load 5 set value ""
data modify storage load 6 set value ""
data modify storage load 7 set value ""
data modify storage load 8 set value ""
data modify storage load 9 set value ""
data modify storage load 10 set value ""
data modify storage load 11 set value ""
data modify storage load 12 set value ""
data modify storage load 13 set value ""
data modify storage load 14 set value ""
data modify storage load 15 set value ""
data modify storage load 16 set value ""
data modify storage load 17 set value ""
data modify storage load 18 set value ""
data modify storage load 19 set value ""
data modify storage load 20 set value ""
data modify storage load 21 set value ""
data modify storage load 22 set value ""
data modify storage load 23 set value ""
data modify storage load 24 set value ""
data modify storage load 25 set value ""
data modify storage load 26 set value ""
data modify storage load 27 set value ""
data modify storage load 28 set value ""
data modify storage load 29 set value ""
data modify storage load 30 set value ""
data modify storage load 31 set value ""
data modify storage load 32 set value ""
data modify storage load 33 set value ""
data modify storage load 34 set value ""
data modify storage load 35 set value ""
data modify storage load 36 set value ""
data modify storage load 37 set value ""
data modify storage load 38 set value ""
data modify storage load 39 set value ""
data modify storage load 40 set value ""
data modify storage load 41 set value ""
data modify storage load 42 set value ""
data modify storage load 43 set value ""
data modify storage load 44 set value ""
data modify storage load 45 set value ""
data modify storage load 46 set value ""
data modify storage load 47 set value ""
data modify storage load 48 set value ""
data modify storage load 49 set value ""
data modify storage load 50 set value ""
data modify storage load 51 set value ""
data modify storage load 52 set value ""
data modify storage load 53 set value ""
data modify storage load 54 set value ""
data modify storage load 55 set value ""
data modify storage load 56 set value ""
data modify storage load 57 set value ""

function alttp:code_input

scoreboard objectives add load dummy

scoreboard players reset splitter load
scoreboard players reset finish load
scoreboard players set index load 0
scoreboard players set indexplus load 1
scoreboard players set part load 1
data modify storage load current set from storage load 1
execute store result storage load index int 1 run scoreboard players get index load
execute store result storage load indexplus int 1 run scoreboard players get indexplus load
execute store result storage load part int 1 run scoreboard players get part load
function alttp:save/loadmacro with storage load

function alttp:save/loadinterpretmacro with storage load