scoreboard players add @s boomerangtick 1
execute if score @p spw_e_2 matches 1 run particle enchant ~ ~ ~ 0 0 0 0 3
#ANIMATION
#QUARTER ONE
execute if score @s boomerangtick matches 1..4 run tp @s ^0.15 ^ ^0.5
execute if score @s boomerangtick matches 5..8 run tp @s ^0.1 ^ ^0.45
execute if score @s boomerangtick matches 9..11 run tp @s ^0.1 ^ ^0.4
execute if score @s boomerangtick matches 12..15 run tp @s ^0.025 ^ ^0.35
#QUARTER TWO
execute if score @s boomerangtick matches 16..19 run tp @s ^-0.025 ^ ^0.3
execute if score @s boomerangtick matches 20..23 run tp @s ^-0.1 ^ ^0.25
execute if score @s boomerangtick matches 24..26 run tp @s ^-0.1 ^ ^0.2
execute if score @s boomerangtick matches 27..30 run tp @s ^-0.15 ^ ^0.2
#QUARTER THREE
execute if score @s boomerangtick matches 31..34 run tp @s ^-0.15 ^ ^-0.2
execute if score @s boomerangtick matches 35..38 run tp @s ^-0.1 ^ ^-0.2
execute if score @s boomerangtick matches 39..41 run tp @s ^-0.1 ^ ^-0.25
execute if score @s boomerangtick matches 42..45 run tp @s ^-0.025 ^ ^-0.3
#QUARTER FOUR
execute if score @s boomerangtick matches 46..49 run tp @s ^0.025 ^ ^-0.35
execute if score @s boomerangtick matches 50..53 run tp @s ^0.1 ^ ^-0.4
execute if score @s boomerangtick matches 54..57 run tp @s ^0.1 ^ ^-0.45
execute if score @s boomerangtick matches 58..60 run tp @s ^0.15 ^ ^-0.5

#FOLLOW PLAYER
execute if score @s boomerangtick matches 61.. unless score . thirdperson matches 1 run tp @s ~ ~ ~ facing entity @p
execute if score @s boomerangtick matches 61.. if score . thirdperson matches 1 run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=thirdperson_player,limit=1]
execute if score @s boomerangtick matches 61.. run tp @s ^ ^ ^0.35
execute if score @s boomerangtick matches 61.. unless score . thirdperson matches 1 run execute if entity @p[distance=..0.5] run function alttp:boomerangback
execute if score @s boomerangtick matches 61.. if score . thirdperson matches 1 run execute if entity @e[type=armor_stand,tag=thirdperson_player,distance=..0.5] run function alttp:boomerangback

#DETECT COLLISION
scoreboard players set @s enemydummy 1
execute at @s unless block ~ ~ ~ #gothrough run scoreboard players set @s enemydummy 0
execute at @s if block ~ ~ ~ suspicious_gravel run function alttp:potloot
execute at @s if block ~ ~ ~ suspicious_gravel run particle block suspicious_gravel ~ ~ ~ 0.5 0.5 0.5 0.1 50 force
execute at @s if block ~ ~ ~ suspicious_gravel run setblock ~ ~ ~ air
execute at @s unless block ~ ~ ~ #gothrough unless score @s boomerangtick matches 61.. run playsound alttp.tink weather @p ~ ~ ~ 1 1
playsound alttp.boomerang weather @p ~ ~ ~ 1 1

#BOOMERANG MODEL
scoreboard players add anirot boomerangtick 60
execute if score anirot boomerangtick matches 180 run scoreboard players set anirot boomerangtick -180

execute at @s run tp @e[type=armor_stand,tag=boomerangmodel] ~ ~-0.5 ~
execute store result score rot boomerangtick run data get entity @s Rotation[1]
scoreboard players set rotcalc boomerangtick 1
scoreboard players operation rot boomerangtick /= rotcalc boomerangtick
execute store result entity @e[type=armor_stand,tag=boomerangmodel,limit=1] Pose.Head[2] float 1 run scoreboard players get rot boomerangtick
execute store result entity @e[type=armor_stand,tag=boomerangmodel,limit=1] Pose.Head[1] float 1 run scoreboard players get anirot boomerangtick

#GIVE BACK IF WAITING TOO LONG
execute at @s unless score @s boomerangtick matches 61.. if score @s enemydummy matches 0 run scoreboard players set @s boomerangtick 61
execute if score @s boomerangtick matches 200.. run function alttp:boomerangback

#ON FIRE AND DAMAGING
execute if block ~ ~ ~ #fire run tag @s add on_fire
execute if entity @s[tag=on_fire] run data merge entity @s {HasVisualFire:1b}
execute if entity @s[tag=!on_fire] at @s as @e[tag=!bo_hit,tag=enemy,distance=..0.75] run damage @s 4
execute if entity @s[tag=!on_fire] at @s run tag @e[tag=enemy,distance=..0.75] add bo_hit
execute if entity @s[tag=!on_fire] at @s if score @p spw_e_2 matches 1 as @e[tag=enemy,distance=..0.75] run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute if entity @s[tag=!on_fire] at @s if score @p spw_e_2 matches 1 as @e[tag=enemy,distance=..0.75] run playsound block.enchantment_table.use weather @p ~ ~ ~ 1 1
execute if entity @s[tag=!on_fire] at @s positioned ~ ~-1 ~ as @e[tag=!bo_hit,tag=enemy,distance=..0.75] run damage @s 4
execute if entity @s[tag=!on_fire] at @s positioned ~ ~-1 ~ run tag @e[tag=enemy,distance=..0.75] add bo_hit
execute if entity @s[tag=!on_fire] at @s if score @p spw_e_2 matches 1 positioned ~ ~-1 ~ as @e[tag=enemy,distance=..0.75] run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute if entity @s[tag=!on_fire] at @s if score @p spw_e_2 matches 1 positioned ~ ~-1 ~ as @e[tag=enemy,distance=..0.75] run playsound block.enchantment_table.use weather @p ~ ~ ~ 1 1
execute if entity @s[tag=on_fire] at @s run data merge entity @e[tag=!bo_hit,tag=enemy,distance=..0.75,limit=1] {Fire:100s}
execute if entity @s[tag=on_fire] at @s run tag @e[tag=enemy,distance=..0.75] add bo_hit
execute if entity @s[tag=on_fire] at @s positioned ~ ~-1 ~ run data merge entity @e[tag=!bo_hit,tag=enemy,distance=..0.75,limit=1] {Fire:100s}
execute if entity @s[tag=on_fire] at @s positioned ~ ~-1 ~ run tag @e[tag=enemy,distance=..0.75] add bo_hit

#ITEM PICKING-UP
execute at @s positioned ~ ~-0.1 ~ unless entity @e[type=item,tag=bo_item,distance=..2] run tag @e[type=item,distance=..0.75,limit=1] add bo_item
execute if entity @e[type=item,tag=bo_item,tag=!copied] run data modify entity @s ArmorItems[3] set from entity @e[type=item,tag=bo_item,limit=1] Item
execute if entity @e[type=item,tag=bo_item,tag=copied] run data merge entity @e[type=item,tag=bo_item,limit=1] {Item:{id:"minecraft:activator_rail"}}
execute if entity @e[type=item,tag=bo_item,tag=!copied] run tag @e[type=item,tag=bo_item,tag=!copied] add copied

#STUNNING ENEMIES
execute at @s run tag @e[tag=enemy,distance=..0.75] add icerodfrozen
execute at @s run tag @e[tag=enemy,distance=..0.75] add noparticles
execute at @s run scoreboard players set @e[tag=enemy,distance=..0.75] frozentimer 200
execute at @s positioned ~ ~-1 ~ run tag @e[tag=enemy,distance=..0.75] add icerodfrozen
execute at @s positioned ~ ~-1 ~ run tag @e[tag=enemy,distance=..0.75] add noparticles
execute at @s positioned ~ ~-1 ~ run scoreboard players set @e[tag=enemy,distance=..0.75] frozentimer 200