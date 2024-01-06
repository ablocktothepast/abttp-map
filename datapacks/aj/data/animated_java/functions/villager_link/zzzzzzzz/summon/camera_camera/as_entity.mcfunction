tp @s ^0 ^0 ^0 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:villager_link/on_summon/as_camera_entities