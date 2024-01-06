execute unless entity @s[nbt={inGround:1b}] run kill @e[type=marker,tag=bombarrowmarker,distance=..5]
execute unless entity @s[nbt={inGround:1b}] run summon marker ~ ~ ~ {Tags:["bombarrowmarker"]}
execute unless entity @s[nbt={inGround:1b}] run particle smoke ~ ~ ~ 0.1 0.1 0.1 0 1 force