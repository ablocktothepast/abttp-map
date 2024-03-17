data modify entity @e[tag=bm,tag=bg,limit=1] item.tag.CustomModelData set value 8002
data modify entity @e[tag=bm,tag=sel,limit=1] item.tag.CustomModelData set value 8005
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[0] set value 0.15f
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[1] set value 0.15f

bossbar set bm name [{"keybind":"key.attack"},{"text":" to select"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.use"},{"text":" to return"},{"text":" | ","color":"gray"},{"keybind":"key.sneak"},{"text":" to close"}]