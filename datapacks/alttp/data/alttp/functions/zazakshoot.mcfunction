summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["enemy","zazakball","ms_laser","nolifesteal"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1166172713,1517896460,-1797089311,-2001972460],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzk1YTdhNjdmN2E0YjM4ZjgyN2YxYmNhODBlNjFmNDg2MDZiNjljZTVmNjQzNDQxMmJiZmQ4YTU3NjU2YWQyZCJ9fX0="}]}}}}]}

execute as @e[type=armor_stand,tag=zazakball,tag=!posed] run tp @s ~ ~ ~ ~ ~
tag @e[type=armor_stand,tag=zazakball] add posed