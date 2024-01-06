scoreboard players add @s enemydummy9 1

execute if score @s enemydummy9 matches 1 run playsound minecraft:alttp.boss_death weather @p

execute if score @s enemydummy9 matches 60.. run playsound entity.generic.explode weather @p
execute if score @s enemydummy9 matches 60.. run particle explosion_emitter ~ ~ ~
execute if score @s enemydummy9 matches 60.. run bossbar set minecraft:armosknight visible false
execute if score @s enemydummy9 matches 60.. run bossbar remove minecraft:armosknight
execute if score @s enemydummy9 matches 60.. run kill @e[type=marker,tag=link_b]
execute if score @s enemydummy9 matches 60.. run kill @e[type=marker,tag=armosknightmarker]
execute if score @s enemydummy9 matches 60.. run kill @s