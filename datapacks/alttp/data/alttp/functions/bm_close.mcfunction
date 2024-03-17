scoreboard players set active bm 0
bossbar remove bm

#KILL
kill @e[type=item_display,tag=bm]
kill @e[type=area_effect_cloud,tag=bm]
kill @e[type=minecart,tag=bm]
kill @e[type=interaction,tag=bm]

effect clear @p speed
effect clear @p slowness
effect clear @p blindness
attribute @p minecraft:generic.movement_speed base set 0.1