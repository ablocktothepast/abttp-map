scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:tristan/on_summon/as_rig_entities
execute if entity @s[tag=aj.tristan.bone] run function #animated_java:tristan/zzzzzzzz/on_summon/as_bones

