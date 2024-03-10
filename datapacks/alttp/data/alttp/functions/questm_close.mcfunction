scoreboard players set menu quests 0
kill @e[type=marker,tag=playerpos]
kill @e[type=item_display,tag=quest]
kill @e[type=text_display,tag=quest]
kill @e[type=interaction,tag=quest]
scoreboard players set . intercool 10
title @a actionbar " "
bossbar set quests visible false
scoreboard players set init quests 0
scoreboard players set . crosshair 1
effect clear @p speed
effect clear @p slowness
effect clear @p blindness
attribute @p minecraft:generic.movement_speed base set 0.1