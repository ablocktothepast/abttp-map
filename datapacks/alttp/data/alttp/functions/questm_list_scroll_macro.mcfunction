$execute if score type quests matches 1 store result score @e[type=item_display,tag=list$(temp_id)] questlist run data get storage quests side[$(temp)].id
$execute if score type quests matches 1 store result score temp_completed questlist run data get storage quests side[$(temp)].completed

$execute if score type quests matches 2 store result score @e[type=item_display,tag=list$(temp_id)] questlist run data get storage quests main[$(temp)].id
$execute if score type quests matches 2 store result score temp_completed questlist run data get storage quests main[$(temp)].completed

$tag @e[type=item_display,tag=list$(temp_id)] remove quest_marked
$execute if score type quests = marked_type quests if score marked_id quests = @e[type=item_display,tag=list$(temp_id),limit=1] questlist run tag @e[type=item_display,tag=list$(temp_id)] add quest_marked

$execute if score temp_completed questlist matches 0 run tag @e[type=item_display,tag=list$(temp_id)] remove quest_completed
$execute if score temp_completed questlist matches 1 run tag @e[type=item_display,tag=list$(temp_id)] add quest_completed