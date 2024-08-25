execute if entity @s[tag=!open,tag=!locked] run tag @s add do_open
execute if entity @s[tag=open] run tag @s add do_close

execute if entity @s[tag=do_open] run tag @s add open
execute if entity @s[tag=do_open,tag=!double] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=south,open=true]
execute if entity @s[tag=do_open,tag=!double] run playsound minecraft:block.fence_gate.open block @p ~ ~ ~

execute if entity @s[tag=do_close] run tag @s remove open
execute if entity @s[tag=do_close,tag=!double] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=south,open=false]
execute if entity @s[tag=do_close,tag=!double] run playsound minecraft:block.fence_gate.close block @p ~ ~ ~

scoreboard players set @s dummy 0

execute if entity @s[tag=locked] run say No I am locked you moron

tag @s remove do_close
tag @s remove do_open