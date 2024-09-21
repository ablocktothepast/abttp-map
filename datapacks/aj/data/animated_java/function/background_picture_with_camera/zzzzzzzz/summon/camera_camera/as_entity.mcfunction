tp @s ^0 ^0.6875 ^2.0625 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:background_picture_with_camera/on_summon/as_camera_entities