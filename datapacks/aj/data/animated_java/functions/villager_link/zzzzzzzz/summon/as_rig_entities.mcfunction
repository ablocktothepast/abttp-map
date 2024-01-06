scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:villager_link/on_summon/as_rig_entities
execute if entity @s[tag=aj.villager_link.bone] run function #animated_java:villager_link/zzzzzzzz/on_summon/as_bones

