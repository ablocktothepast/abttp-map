scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:background_picture_with_camera/on_summon/as_rig_entities
execute if entity @s[tag=aj.background_picture_with_camera.bone] run function #animated_java:background_picture_with_camera/zzzzzzzz/on_summon/as_bones

execute if entity @s[tag=aj.background_picture_with_camera.camera_origin] run function animated_java:background_picture_with_camera/zzzzzzzz/summon/as_camera_origins