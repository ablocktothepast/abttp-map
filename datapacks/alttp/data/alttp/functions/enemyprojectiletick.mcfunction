execute as @e[type=armor_stand,tag=beamoslaser] at @s run function alttp:projectiletick/beamoslaser
execute as @e[type=armor_stand,tag=le_laser] at @s run function alttp:projectiletick/le_laser

execute as @e[type=armor_stand,tag=fs_fireball,tag=!medusaball] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}}]}

execute as @e[type=armor_stand,tag=medusaball] at @s run function alttp:projectiletick/medusaball
execute as @e[type=armor_stand,tag=big_spear] at @s run function alttp:projectiletick/big_spear
execute as @e[type=armor_stand,tag=red_big_spear] at @s run function alttp:projectiletick/red_big_spear
execute as @e[type=armor_stand,tag=kodongoball] at @s run function alttp:projectiletick/kodongoball
execute as @e[type=marker,tag=kodongofire] at @s run function alttp:projectiletick/kodongofire
execute as @e[type=armor_stand,tag=gyormball] at @s run function alttp:projectiletick/gyormball
execute as @e[type=armor_stand,tag=red_kodongoball] at @s run function alttp:projectiletick/red_kodongoball
execute as @e[type=marker,tag=red_kodongofire] at @s run function alttp:projectiletick/red_kodongofire
execute as @e[type=armor_stand,tag=kuball] at @s run function alttp:projectiletick/kuball
execute as @e[type=armor_stand,tag=lynelball] at @s run function alttp:projectiletick/lynelball
execute as @e[type=armor_stand,tag=wizzrobemagic] at @s run function alttp:projectiletick/wizzrobemagic
execute as @e[type=armor_stand,tag=wizzrobefire] at @s run function alttp:projectiletick/wizzrobefire
execute as @e[type=armor_stand,tag=wizzrobethunder] at @s run function alttp:projectiletick/wizzrobethunder
execute as @e[type=armor_stand,tag=wizzrobeice] at @s run function alttp:projectiletick/wizzrobeice
execute as @e[type=armor_stand,tag=devalantball] at @s run function alttp:projectiletick/devalantball
execute as @e[type=armor_stand,tag=stalfosboner] at @s run function alttp:projectiletick/stalfosboner
execute as @e[type=armor_stand,tag=zazakball] at @s run function alttp:projectiletick/zazakball
execute as @e[type=armor_stand,tag=wwizzrobemagic] at @s run function alttp:projectiletick/wwizzrobemagic
execute as @e[type=armor_stand,tag=ys_head] at @s run function alttp:projectiletick/yshead
execute as @e[type=armor_stand,tag=gs_head] at @s run function alttp:projectiletick/gshead
execute as @e[type=marker,tag=heedlefire] at @s run function alttp:projectiletick/heedlefire
execute as @e[type=armor_stand,tag=fierymoadrop] at @s run function alttp:projectiletick/fierymoadrop
execute as @e[type=marker,tag=fierymoafire] at @s run function alttp:projectiletick/fierymoafire
execute as @e[type=armor_stand,tag=cannonball] at @s run function alttp:projectiletick/cannonball
execute as @e[type=armor_stand,tag=octorokrok] at @s run function alttp:projectiletick/octorokrok
execute as @e[type=armor_stand,tag=slarokrok] at @s run function alttp:projectiletick/slarokrok

execute as @e[type=armor_stand,tag=enemy_projectile] run scoreboard players add @s enemydummy20 1
execute as @e[type=armor_stand,tag=enemy_projectile] if score @s enemydummy20 matches 300.. run kill @s