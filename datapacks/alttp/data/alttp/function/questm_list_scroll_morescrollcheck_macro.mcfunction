scoreboard players set maxscroll questlist 0

$execute if score type quests matches 1 unless data storage quests side[$(temp)] run scoreboard players set maxscroll questlist 1
$execute if score type quests matches 2 unless data storage quests main[$(temp)] run scoreboard players set maxscroll questlist 1