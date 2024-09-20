execute unless score @s bombtick matches -10000.. run scoreboard players set @s bombtick 80
execute if score @s bombtick matches 1.. run scoreboard players remove @s bombtick 1
execute if score @s bombtick matches ..20 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;2105963268,-93173279,-1568118406,1332780703],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY1MzU0Y2EyZWUxYjhmZGM5NTViYjQzN2JiMjYxOTU3NWZjNzk4M2YzNjlhZmEzYTFmN2QxYjk3NTY3ZWE4In19fQ=="}]}},count:1,id:"minecraft:player_head"}]}
execute if score @s bombtick matches 2 run effect give @p[distance=..5] minecraft:resistance 1 3 true
execute if score @s bombtick matches 0 run summon creeper ~ ~1.5 ~ {Fuse:0,ignited:1b,Attributes:[{Name:generic.attack_damage,Base:1}]}
execute if score @s bombtick matches 0 run particle minecraft:explosion_emitter
execute if score @s bombtick matches 0 as @e[tag=inv_bomb,tag=enemy,distance=..7] run damage @s 20
execute if score @s bombtick matches 0 as @e[tag=bomb_weak,tag=enemy,distance=..7] run scoreboard players set @s force_damage 50
execute if entity @s[type=armor_stand] if score @s bombtick matches 0 run kill @s

execute if entity @s[tag=sluggulabomb] if score @s bombtick matches 5 run effect give @e[type=silverfish,tag=sluggulasf,distance=..10] resistance 1 255 true
execute if score @s bombtick matches 1 run kill @e[type=zombie,tag=beamoszo,distance=..4]

particle smoke ~ ~ ~ 0 1.1 0 0 15 force
execute if score @s bombtick matches ..20 run particle smoke ~ ~ ~ 0 1.1 0 0.1 15 force
