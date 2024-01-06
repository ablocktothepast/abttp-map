#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=red_devalantsf] if score @s enemylink = @e[type=armor_stand,tag=red_devalant,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#SINKY SINKY
execute as @p[distance=..3] at @s facing entity @e[type=armor_stand,tag=red_devalant,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.15

#KILLY KILLY
execute unless score @s enemydummy matches 1.. run scoreboard players set @p[distance=..1] set_damage 7
execute unless score @s enemydummy matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy 30

execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1

#SHOOTY SHOOTY
tp @s ~ ~ ~ facing entity @p
scoreboard players add @s enemydummy2 1
execute if score @s enemydummy2 matches 40 run summon armor_stand ~ ~-1.3 ~ {Marker:1b,Invisible:1b,Tags:["enemy","devalantball","fs_fireball","nolifesteal"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1166172713,1517896460,-1797089311,-2001972460],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzk1YTdhNjdmN2E0YjM4ZjgyN2YxYmNhODBlNjFmNDg2MDZiNjljZTVmNjQzNDQxMmJiZmQ4YTU3NjU2YWQyZCJ9fX0="}]}}}}]}
tp @e[type=armor_stand,tag=devalantball,tag=!rotated] ~ ~-1.3 ~ ~ ~
tag @e[type=armor_stand,tag=devalantball,tag=!rotated] add rotated

execute if score @s enemydummy2 matches 60.. run scoreboard players set @s enemydummy2 0

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a