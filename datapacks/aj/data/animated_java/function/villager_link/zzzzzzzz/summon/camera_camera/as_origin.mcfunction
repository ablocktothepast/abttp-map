summon minecraft:armor_stand ~ ~ ~ {Tags:["aj.villager_link.camera","aj.villager_link.camera.camera","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"villager_link\",\"color\":\"light_purple\"},\".\",{\"text\":\"cameraEntity\",\"color\":\"white\"},\"[\",{\"text\":\"camera\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:armor_stand,tag=aj.villager_link.camera.camera,tag=aj.new,limit=1,distance=..1] run function animated_java:villager_link/zzzzzzzz/summon/camera_camera/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner