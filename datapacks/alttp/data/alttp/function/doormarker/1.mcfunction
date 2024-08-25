execute if entity @s[tag=!open,tag=!locked] run tag @s add do_open
execute if entity @s[tag=open] run tag @s add do_close

execute if entity @s[tag=do_open] run tag @s add open
execute if entity @s[tag=do_open,tag=!double] run setblock ~ ~-2 ~ redstone_torch
execute if entity @s[tag=do_open,tag=double] run setblock ^0.5 ^-2 ^ redstone_torch
execute if entity @s[tag=do_open,tag=double] run setblock ^-0.5 ^-2 ^ redstone_torch

execute if entity @s[tag=do_close] run tag @s remove open
execute if entity @s[tag=do_close,tag=!double] run setblock ~ ~-2 ~ air
execute if entity @s[tag=do_close,tag=double] run setblock ^0.5 ^-2 ^ air
execute if entity @s[tag=do_close,tag=double] run setblock ^-0.5 ^-2 ^ air

scoreboard players set @s dummy 0

execute if entity @s[tag=locked] run function alttp:door_lockcheck
execute if entity @s[tag=locked] run scoreboard players set id dialogue 437
execute if entity @s[tag=locked] run function alttp:dialogue_start

execute if entity @s[tag=lock_opened] run tag @s add open
execute if entity @s[tag=lock_opened,tag=!double] run setblock ~ ~-2 ~ redstone_torch
execute if entity @s[tag=lock_opened,tag=double] run setblock ^0.5 ^-2 ^ redstone_torch
execute if entity @s[tag=lock_opened,tag=double] run setblock ^-0.5 ^-2 ^ redstone_torch

tag @s remove do_close
tag @s remove do_open
tag @s remove lock_opened