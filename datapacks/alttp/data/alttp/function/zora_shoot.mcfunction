summon armor_stand ~ ~-0.3 ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;-1166172713,1517896460,-1797089311,-2001972460],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzk1YTdhNjdmN2E0YjM4ZjgyN2YxYmNhODBlNjFmNDg2MDZiNjljZTVmNjQzNDQxMmJiZmQ4YTU3NjU2YWQyZCJ9fX0="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["fs_fireball","zoraball","nolifesteal"]}
execute as @e[type=armor_stand,tag=zoraball,tag=!rotated] at @s facing entity @p feet run tp @s ~ ~ ~ ~ 0
tag @e[type=armor_stand,tag=zoraball] add rotated

playsound alttp.throw weather @p ~ ~ ~ 1 0.9