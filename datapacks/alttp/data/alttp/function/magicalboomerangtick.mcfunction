scoreboard players add @s boomerangtick 1
execute if score @s boomerangtick matches 2 run scoreboard players set @s enemydummy2 0
#ANIMATION
#QUARTER ONE
execute if score @s boomerangtick matches 1..4 run tp @s ^0.15 ^ ^0.6
execute if score @s boomerangtick matches 5..7 run tp @s ^0.1 ^ ^0.55
execute if score @s boomerangtick matches 8..10 run tp @s ^0.1 ^ ^0.5
execute if score @s boomerangtick matches 11..13 run tp @s ^0.025 ^ ^0.45
#QUARTER TWO
execute if score @s boomerangtick matches 14..17 run tp @s ^-0.025 ^ ^0.4
execute if score @s boomerangtick matches 18..20 run tp @s ^-0.1 ^ ^0.35
execute if score @s boomerangtick matches 22..24 run tp @s ^-0.1 ^ ^0.3
execute if score @s boomerangtick matches 25..27 run tp @s ^-0.15 ^ ^0.3

#QUARTER THREE
execute if score @s boomerangtick matches 28..31 run tp @s ^-0.15 ^ ^-0.3
execute if score @s boomerangtick matches 32..34 run tp @s ^-0.1 ^ ^-0.3
execute if score @s boomerangtick matches 35..37 run tp @s ^-0.1 ^ ^-0.35
execute if score @s boomerangtick matches 39..41 run tp @s ^-0.025 ^ ^-0.4
#QUARTER FOUR
execute if score @s boomerangtick matches 42..45 run tp @s ^0.025 ^ ^-0.45
execute if score @s boomerangtick matches 46..48 run tp @s ^0.1 ^ ^-0.5
execute if score @s boomerangtick matches 49..51 run tp @s ^0.1 ^ ^-0.55
execute if score @s boomerangtick matches 52..54 run tp @s ^0.15 ^ ^-0.6

#FOLLOW PLAYER
execute if score @s boomerangtick matches 55.. run tp @s ~ ~ ~ facing entity @p
execute if score @s boomerangtick matches 55.. run tp @s ^ ^ ^0.35
execute if score @s boomerangtick matches 55.. run execute if entity @p[distance=..0.5] run function alttp:magicalboomerangback

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

execute at @s run tp @e[type=armor_stand,tag=magicalboomerangmodel] ~ ~-0.5 ~
execute store result score rot boomerangtick run data get entity @s Rotation[1]
scoreboard players set rotcalc boomerangtick 1
scoreboard players operation rot boomerangtick /= rotcalc boomerangtick
execute store result entity @e[type=armor_stand,tag=magicalboomerangmodel,limit=1] Pose.Head[2] float 1 run scoreboard players get rot boomerangtick
execute store result entity @e[type=armor_stand,tag=magicalboomerangmodel,limit=1] Pose.Head[1] float 1 run scoreboard players get anirot boomerangtick

#GIVE BACK IF WAITING TOO LONG
execute at @s unless score @s boomerangtick matches 61.. if score @s enemydummy matches 0 run scoreboard players set @s boomerangtick 61
execute if score @s boomerangtick matches 200.. run function alttp:magicalboomerangback

#ON FIRE AND DAMAGING
execute if block ~ ~ ~ #fire run tag @s add on_fire
execute if entity @s[tag=on_fire] run data merge entity @s {HasVisualFire:1b}
execute if entity @s[tag=!on_fire] at @s as @e[tag=!bo_hit,tag=enemy,distance=..0.75] run damage @s 4
execute if entity @s[tag=!on_fire] at @s if entity @e[tag=!bo_hit,tag=enemy,distance=..0.75,tag=!nolifesteal] run scoreboard players add @s enemydummy2 2
execute if entity @s[tag=!on_fire] at @s run tag @e[tag=enemy,distance=..0.75] add bo_hit
execute if entity @s[tag=!on_fire] at @s positioned ~ ~-1 ~ as @e[tag=!bo_hit,tag=enemy,distance=..0.75] run damage @s 4
execute if entity @s[tag=!on_fire] at @s positioned ~ ~-1 ~ if entity @e[tag=!bo_hit,tag=enemy,distance=..0.75,tag=!nolifesteal] run scoreboard players add @s enemydummy2 2
execute if entity @s[tag=!on_fire] at @s positioned ~ ~-1 ~ run tag @e[tag=enemy,distance=..0.75] add bo_hit
execute if entity @s[tag=on_fire] at @s run data merge entity @e[tag=!bo_hit,tag=enemy,distance=..0.75,limit=1] {Fire:100s}
execute if entity @s[tag=on_fire] at @s run tag @e[tag=enemy,distance=..0.75] add bo_hit
execute if entity @s[tag=on_fire] at @s positioned ~ ~-1 ~ run data merge entity @e[tag=!bo_hit,tag=enemy,distance=..0.75,limit=1] {Fire:100s}
execute if entity @s[tag=on_fire] at @s positioned ~ ~-1 ~ run tag @e[tag=enemy,distance=..0.75] add bo_hit

#ITEM PICKING-UP
execute at @s positioned ~ ~-0.1 ~ unless entity @e[type=item,tag=bo_item,distance=..5] run tag @e[type=item,distance=..0.75,limit=1] add bo_item
execute if entity @e[type=item,tag=bo_item,tag=!copied] run data modify entity @s ArmorItems[3] set from entity @e[type=item,tag=bo_item,limit=1] Item
execute if entity @e[type=item,tag=bo_item,tag=copied] run data merge entity @e[type=item,tag=bo_item,limit=1] {Item:{id:"minecraft:activator_rail"}}
execute if entity @e[type=item,tag=bo_item,tag=!copied] run tag @e[type=item,tag=bo_item,tag=!copied] add copied