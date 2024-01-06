tag @s[scores={hooklook=..0}] add hookshotting
execute if entity @s[scores={hooklook=..0}] run tag @e[type=marker,tag=hookshotstand,limit=1,sort=nearest] add yes

##No hookshotting
scoreboard players set @s[scores={hooklook=1..}] spw_c_3 0
execute if entity @p[scores={hooklook=1..}] run kill @e[type=marker,tag=hookshotstand]
execute if entity @p[scores={hooklook=1..}] run kill @e[type=armor_stand,tag=hookshotlock]
execute if entity @p[scores={hooklook=1..}] run kill @e[type=armor_stand,tag=hookchain]
execute if entity @p[scores={hooklook=1..}] run kill @e[type=armor_stand,tag=hookshotani]

execute if score @p hooklook matches -1 as @e[type=armor_stand,tag=hookshotani] at @s run tp @s ^ ^ ^0.5
execute if score @p hooklook matches -1 as @e[type=armor_stand,tag=hookshotlock] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=hookshotani,limit=1] eyes
execute if score @p hooklook matches -1 run tp @p @e[type=armor_stand,tag=hookshotlock,limit=1,sort=nearest]
scoreboard players add @s[tag=hookshotting] hookdist 1
execute unless score @s spw_e_3 matches 1 if score @s[tag=hookshotting] hookdist matches 20 run tag @s add hookshotwall
execute if score @s spw_e_3 matches 1 if score @s[tag=hookshotting] hookdist matches 30 run tag @s add hookshotwall
execute as @s[tag=hookshotting] at @e[type=armor_stand,tag=hookshotani] run execute unless block ~ ~ ~ #gothrough run tag @s add hookshotwall
execute as @s[tag=hookshotting] run scoreboard players add hookshotkill_ dummy 1
execute as @s[tag=hookshotting] if score hookshotkill_ dummy matches 2.. run scoreboard players add hookshotkill dummy 1
execute as @s[tag=hookshotting] if score hookshotkill_ dummy matches 2.. run scoreboard players set hookshotkill_ dummy 0
execute as @s[tag=hookshotting] as @e[type=armor_stand,tag=hookchain] if score @s dummy = hookshotkill dummy run kill @s
execute as @s[tag=hookshotwall] at @s as @e[type=armor_stand,tag=hookshotani] at @s run tp @s ^ ^ ^-1
execute as @s[tag=hookshotwall] at @s run kill @e[type=marker,tag=hookshotstand,limit=1,sort=nearest]
execute as @s[tag=hookshotwall] at @s run tp @s @e[type=armor_stand,tag=hookshotani,limit=1]
execute as @s[tag=hookshotwall] at @s run kill @e[type=armor_stand,tag=hookshotani]
execute as @s[tag=hookshotwall] at @s run kill @e[type=armor_stand,tag=hookshotlock]
execute as @s[tag=hookshotwall] at @s run kill @e[type=armor_stand,tag=hookchain]
execute as @s[tag=hookshotwall] at @s run tag @s remove hookshotting
scoreboard players set @s[tag=hookshotwall] spw_c_3 0
execute if entity @s[tag=hookshotwall] run stopsound @a weather item.elytra.flying
kill @e[type=marker,tag=hookshotlock]
execute as @s[tag=hookshotwall] at @s run tag @s remove hookshotwall