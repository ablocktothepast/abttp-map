#RUN COMMANDS
#HOTBAR TEXT
execute if entity @p[gamemode=adventure] if score drowning dummy matches 1 run function alttp:hotbar_water
execute if entity @p[gamemode=adventure] unless score drowning dummy matches 1 run function alttp:hotbar

#APPLY MAXMAGIC
execute as @a at @s if score @s magic > @s magicmax store result score @s magic run scoreboard players get @s magicmax

#STATS NOT UNDER 0
execute if score @p magic matches ..-1 run scoreboard players set @p magic 0
execute if score @p rupees matches ..-1 run scoreboard players set @p rupees 0

#4 HEART PIECES
execute as @a at @s if score @s heartpieces matches 4.. run scoreboard players add @s extrahearts 1
execute as @a at @s if score @s heartpieces matches 4.. run function alttp:extrahealth_apply
execute as @a at @s if score @s heartpieces matches 4.. run tellraw @p ["","You collected ",{"text":"4 Heart Pieces","color":"red"},"! Your maximum HP was increased."]
execute as @a at @s if score @s heartpieces matches 4.. run scoreboard players set @s heartpieces 0

#MAX RUPEES
execute as @a if score @s rupees > @s rupeesmax store result score @s rupees run scoreboard players get @s rupeesmax

#HEALTH NEVER OVER MAX SOMEHOW
execute as @a store result score chealth dummy run data get entity @s Health
execute as @a store result score cmaxhealth dummy run attribute @s generic.max_health get
execute as @a unless score @s cw_hp_old matches 1.. if score chealth dummy > cmaxhealth dummy run function alttp:maxhealth_apply

#IDENTIFY SPLIT SLIMES AS SLIMES
execute as @e[type=slime,nbt={Size:0},tag=!slime] run attribute @s generic.movement_speed base set 0.6
execute as @e[type=slime,nbt={Size:0},tag=!slime] run tag @s add slime

#FIX INVISIBILITY RUNNING OUT
effect give @e[tag=enemy,type=!armor_stand,tag=!noinvis,type=!bee,tag=!muckyspider] invisibility infinite 1 true

##Crosshair
# execute if score . crosshair matches 1 run title @a times 0t 11t 0t
# execute if score . crosshair matches 1 run title @a title {"text":"\uE007","color":"#4E5C24"}

##Effects for third person
execute if score . thirdperson matches 1 run effect give @p invisibility infinite 1 true
execute if score . thirdperson matches 1 run effect give @p resistance infinite 255 true
execute if score . thirdperson matches 1 run effect give @p mining_fatigue infinite 255 true

#OTHER
effect clear @e[tag=enemy] glowing
execute as @e[type=arrow] run data merge entity @s {PierceLevel:5b}
execute as @e[type=spectral_arrow] run data merge entity @s {PierceLevel:5b}
execute as @a if score @s spw_e_2 matches 1 run scoreboard players set @s boomerangtier 3
team join mcape_friends @e[tag=enemy]

#DROPPED ITEMS
kill @e[type=item,tag=!loot,nbt=!{Item:{id:"minecraft:turtle_scute",count:1,components:{"minecraft:custom_model_data":14}}},nbt=!{Item:{id:"minecraft:sweet_berries",count:1}},nbt=!{Item:{id:"minecraft:tnt",count:1}}]

##Stuck detection
execute as @p[gamemode=adventure] at @s unless score # gameplay matches 1 unless score fov_init dummy matches 1.. unless block ~ ~1 ~1 #gothrough_stuck unless block ~ ~1 ~-1 #gothrough_stuck unless block ~1 ~1 ~ #gothrough_stuck unless block ~-1 ~1 ~ #gothrough_stuck unless block ~ ~-0.1 ~ #gothrough_stuck run function alttp:drown

##Set new respawn point for drowning
execute unless entity @e[type=marker,tag=respawn] run summon marker ~ ~ ~ {Tags:["respawn"]}
execute at @p unless block ~ ~-1 ~ water unless block ~ ~-1 ~-1 water unless block ~ ~-1 ~1 water unless block ~1 ~-1 ~-1 water unless block ~-1 ~-1 ~-1 water unless block ~1 ~-1 ~1 water unless block ~-1 ~-1 ~1 water unless block ~1 ~-1 ~ water unless block ~-1 ~-1 ~ water unless block ~ ~-0.1 ~ #gothrough unless block ~ ~ ~ water run tp @e[type=marker,tag=respawn] ~ ~ ~

##Doors
execute as @e[type=marker,tag=doormarker,tag=open] at @s unless entity @p[distance=..4] run function alttp:doormarker
execute as @e[type=marker,tag=doormarker,tag=open] run scoreboard players add @s dummy 1
execute as @e[type=marker,tag=doormarker,tag=open] at @s if score @s dummy matches 10.. run function alttp:doormarker

##Check for new arrows
scoreboard players set arrowupdate dummy 0
execute if score @p arrows_selected matches 0 run scoreboard players set arrowupdate dummy 1
execute if score @p arrows_selected matches 0 if score @p arrows matches 1.. run scoreboard players set @p arrows_selected 1
execute if score @p arrows_selected matches 0 if score @p arrows_silver matches 1.. run scoreboard players set @p arrows_selected 2
execute if score @p arrows_selected matches 0 if score @p arrows_bomb matches 1.. run scoreboard players set @p arrows_selected 3
execute unless score @p arrows_selected matches 0 if score arrowupdate dummy matches 1 as @p at @s run function alttp:pin/arrows

#ARROW CHANGES
execute unless score old_arrow dummy = @p arrows run function alttp:arrows_update
execute unless score old_arrowsilver dummy = @p arrows_silver run function alttp:arrows_update
execute unless score old_arrowbomb dummy = @p arrows_bomb run function alttp:arrows_update
execute unless score old_quiver dummy = @p quiverlevel run function alttp:arrows_update

#RESCHEDULE
schedule function alttp:10tick 10t