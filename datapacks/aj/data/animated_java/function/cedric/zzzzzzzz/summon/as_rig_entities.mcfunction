scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:cedric/on_summon/as_rig_entities
execute if entity @s[tag=aj.cedric.bone] run function #animated_java:cedric/zzzzzzzz/on_summon/as_bones

