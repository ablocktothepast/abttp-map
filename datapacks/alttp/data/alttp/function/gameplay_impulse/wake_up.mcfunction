scoreboard players set # gameplay 2
kill @e[type=area_effect_cloud,tag=begin_aec]
kill @e[type=minecart,tag=begin_mc]
tp @p -319 10 584 90 90

schedule function alttp:ajsummon/link_waking 10t

scoreboard players set wakecutscene gameplay 0

title @p actionbar ""

execute as @e[tag=aj.villager_link.rig_entity] run data merge entity @s {brightness:[15.0f,15.0f]}