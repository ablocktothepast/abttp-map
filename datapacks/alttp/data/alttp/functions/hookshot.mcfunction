scoreboard players set @s spw_c_3 1
scoreboard players set hookshotkill dummy -2
scoreboard players set hookshotkill_ dummy 0
summon marker ~ ~0.6 ~ {Tags:["hookshotstand"]}
tp @e[type=marker,tag=hookshotstand,limit=1,sort=nearest] ~ ~0.6 ~ ~ ~
scoreboard players set @s hookdist 0
scoreboard players set hookcheck dummy 0
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["hookshotlock"]}
effect give @e[type=armor_stand,tag=hookshotlock] invisibility infinite 255 true
tp @e[type=armor_stand,tag=hookshotlock] ~ ~ ~ ~ ~
team join no_collide @p
team join no_collide @e[type=armor_stand,tag=hookshotlock]