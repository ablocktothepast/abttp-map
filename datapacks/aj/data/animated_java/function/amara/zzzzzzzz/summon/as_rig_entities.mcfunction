scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:amara/on_summon/as_rig_entities
execute if entity @s[tag=aj.amara.bone] run function #animated_java:amara/zzzzzzzz/on_summon/as_bones

