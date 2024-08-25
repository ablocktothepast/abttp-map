##NPC Animations
execute at @p as @e[type=armor_stand,tag=npc,distance=..64] run function alttp:npc_animate
execute at @p as @e[type=item_display,tag=npc,distance=..64,tag=!aj.rig_root] run function alttp:npc_animate
execute at @p as @e[type=#animated_java:root,tag=npc,distance=64..] run function alttp:npc_unanimate