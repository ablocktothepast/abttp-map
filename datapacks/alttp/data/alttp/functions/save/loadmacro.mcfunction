##Get char to check
$data modify storage load check set string storage load input $(index) $(indexplus)

##Check if the char is a splitter
data modify storage load splitter set value "/"
execute store success score splitter load run data modify storage load splitter set from storage load check

##If not a splitter, add to current part
execute if score splitter load matches 1 run function alttp:save/loadmacromacro with storage load

##If splitter, go to new part
execute if score splitter load matches 0 run scoreboard players add part load 1
execute if score splitter load matches 0 store result storage load part int 1 run scoreboard players get part load

##Next char
scoreboard players add index load 1
scoreboard players add indexplus load 1
execute store result storage load index int 1 run scoreboard players get index load
execute store result storage load indexplus int 1 run scoreboard players get indexplus load

##Exit loop if finished
function alttp:save/loadmacromacromacro with storage load
$execute store success score finish load run data modify storage load check set string storage load input $(indexplus) $(indexplus)
execute if score finish load matches 1 run function alttp:save/loadmacro with storage load