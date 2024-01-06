scoreboard players set @s mapping 0

summon armor_stand ~ ~ ~ {Tags:["oldpostp"],Invisible:1b,Marker:1b}
scoreboard players set @s mapcooldown 20
scoreboard players set . intercool 10

effect clear @s levitation

bossbar set map visible false