execute unless block ~ ~-0.1 ~ #gothrough if entity @s[tag=active] run function alttp:activebomb
execute unless block ~ ~-0.1 ~ #gothrough if entity @s[tag=active] run return 0
execute unless block ~ ~-0.1 ~ #gothrough run summon armor_stand ~ ~-1.5 ~ {Marker:1b,Invisible:1b,Tags:["bomb"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1274520565,137973731,-1550009758,370346578],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM1NjNiOWI1ODI0MDlmNDFmMGUwNzgxYTk4M2FmZTNkOGZlMmZiZjM4M2M1M2E1ZDI3NDMxNTU1NjRkNjgifX19"}]}}}}]}
execute unless block ~ ~-0.1 ~ #gothrough run playsound alttp.lay_bomb weather @p ~ ~ ~ 1 1
execute if data entity @s Item.tag.activebomb unless block ~ ~-0.1 ~ #gothrough run tag @p remove bomb
execute if data entity @s Item.tag.activebomb unless block ~ ~-0.1 ~ #gothrough store result score @e[type=armor_stand,tag=bomb,limit=1,sort=nearest] bombtick run scoreboard players get @p bombtick
execute if data entity @s Item.tag.activebomb unless block ~ ~-0.1 ~ #gothrough run scoreboard players set @p bombtick -1
execute unless block ~ ~-0.1 ~ #gothrough run scoreboard players add @p st_bomb 1
execute unless block ~ ~-0.1 ~ #gothrough run kill @s
execute unless block ~ ~-0.7 ~ #bomb_hitbox run data merge entity @s {NoGravity:0b}
execute if block ~ ~-0.7 ~ #bomb_hitbox run data merge entity @s {NoGravity:1b}
execute if block ~ ~-0.7 ~ #bomb_hitbox run tp @s ~ ~-0.1 ~

##Third person shi
execute unless data entity @s Item.tag.activebomb if score . thirdperson matches 1 unless entity @s[tag=thirdpersoned] at @e[type=armor_stand,tag=thirdperson_player] rotated as @p run tp @s ~ ~ ~ ~ ~
execute unless data entity @s Item.tag.activebomb if score . thirdperson matches 1 unless entity @s[tag=thirdpersoned] at @s run function alttp:thirdperson/bomb_launch
execute unless data entity @s Item.tag.activebomb if score . thirdperson matches 1 unless entity @s[tag=thirdpersoned] run tag @s add thirdpersoned

# Check cooldown
# execute unless score @s dummy matches 1 if score @p bombcooldown matches 1.. run scoreboard players add @p bombs 1
execute unless data entity @s Item.tag.activebomb unless score @s dummy matches 1 if score @p bombcooldown matches 1.. run kill @s

execute unless data entity @s Item.tag.activebomb unless score @s dummy matches 1 unless score @p bombcooldown matches 1.. unless score @p bombs matches 1.. run kill @s
execute unless data entity @s Item.tag.activebomb unless score @s dummy matches 1 unless score @p bombcooldown matches 1.. if score @p bombs matches 1.. run scoreboard players remove @p bombs 1
execute unless data entity @s Item.tag.activebomb unless score @s dummy matches 1 unless score @p bombcooldown matches 1.. if score @p bombs matches 1.. run scoreboard players set @p bombcooldown 20

execute unless data entity @s Item.tag.activebomb unless score @s dummy matches 1 run scoreboard players set @s dummy 1