scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:lysander/on_summon/as_rig_entities
execute if entity @s[tag=aj.lysander.bone] run function #animated_java:lysander/zzzzzzzz/on_summon/as_bones

