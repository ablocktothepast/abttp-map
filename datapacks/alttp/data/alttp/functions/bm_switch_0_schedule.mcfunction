data modify entity @e[tag=bm,tag=bg,limit=1] item.tag.CustomModelData set value 8001
data modify entity @e[tag=bm,tag=sel,limit=1] item.tag.CustomModelData set value 8005
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[0] set value 0.115f
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[1] set value 0.115f

bossbar set bm name [{"keybind":"key.attack"},{"text":" to select"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]