#RUN COMMANDS
#ZOMBIE NOT BURN
execute as @e[tag=enemy,type=!armor_stand] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:wither_rose",Count:1b}]}

#KEEP FALLINGBLOCKS ALIVE
execute as @e[type=minecraft:falling_block,tag=wblock] at @s run data merge entity @s {Time:1}

#KEEP ENEMIES ALIVE
execute as @e[tag=enemy] at @s run data merge entity @s {PersistenceRequired:1b}

#KILL LONE HITBOX MOBS
execute as @p at @s run tag @e[tag=enemy,type=!armor_stand,type=!item_display,type=!area_effect_cloud,type=!bee,distance=..25] add lone
execute as @p at @s as @e[tag=enemy,type=!armor_stand,distance=..25] at @s as @e[tag=enemy,type=armor_stand,distance=..25] if score @s enemylink = @e[tag=lone,tag=enemy,limit=1,sort=nearest] enemylink run tag @e[tag=lone,tag=enemy,limit=1,sort=nearest] remove lone
execute as @p at @s as @e[tag=enemy,type=!armor_stand,distance=..25] at @s as @e[tag=enemy,type=item_display,distance=..25] if score @s enemylink = @e[tag=lone,tag=enemy,limit=1,sort=nearest] enemylink run tag @e[tag=lone,tag=enemy,limit=1,sort=nearest] remove lone
kill @e[tag=lone,tag=!armosknightmarker,tag=!aksandwave,tag=!muckyspider]

#UNTICKING
execute at @p run tag @e[tag=enemy,distance=32..,tag=!unTick] add unTick
execute as @e[tag=enemy,tag=unTick,tag=!unTicked] run function alttp:untick
execute at @p run tag @e[tag=enemy,tag=unTick,distance=..32] add reTick
execute as @e[tag=enemy,tag=reTick] run function alttp:retick

##Clusters
execute at @p as @e[type=marker,tag=cluster,nbt={data:{active:0b}},distance=..64] at @s run function alttp:clusters/activate
execute at @p as @e[type=marker,tag=cluster,nbt={data:{active:1b}},distance=64..] at @s run function alttp:clusters/deactivate

##NPC Animations
execute at @p as @e[type=armor_stand,tag=npc,distance=..64] run function alttp:npc_animate
execute at @p as @e[type=item_display,tag=npc,distance=..64,tag=!aj.rig_root] run function alttp:npc_animate
execute at @p as @e[type=#animated_java:root,tag=npc,distance=64..] run function alttp:npc_unanimate

#OTHER
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]
effect give @p saturation infinite 255 true
execute as @p run function alttp:extrahealth_apply

#RESCHEDULE
schedule function alttp:100tick 5s