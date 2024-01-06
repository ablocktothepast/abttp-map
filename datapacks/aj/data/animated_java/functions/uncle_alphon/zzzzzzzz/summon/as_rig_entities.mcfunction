scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:uncle_alphon/on_summon/as_rig_entities
execute if entity @s[tag=aj.uncle_alphon.bone] run function #animated_java:uncle_alphon/zzzzzzzz/on_summon/as_bones

