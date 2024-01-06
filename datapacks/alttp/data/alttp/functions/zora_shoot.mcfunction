summon armor_stand ~ ~-0.3 ~ {Marker:1b,Invisible:1b,Tags:["fs_fireball","zoraball","nolifesteal"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1166172713,1517896460,-1797089311,-2001972460],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzk1YTdhNjdmN2E0YjM4ZjgyN2YxYmNhODBlNjFmNDg2MDZiNjljZTVmNjQzNDQxMmJiZmQ4YTU3NjU2YWQyZCJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=zoraball,tag=!rotated] at @s facing entity @p feet run tp @s ~ ~ ~ ~ 0
tag @e[type=armor_stand,tag=zoraball] add rotated

playsound alttp.throw weather @p ~ ~ ~ 1 0.9