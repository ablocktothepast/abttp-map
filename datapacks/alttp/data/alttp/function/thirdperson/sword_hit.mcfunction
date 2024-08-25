execute unless score @p swordtier matches 1.. run damage @s 2 player_attack
execute if score @p swordtier matches 1 run damage @s 10 player_attack
execute if score @p swordtier matches 2 run damage @s 12 player_attack
execute if score @p swordtier matches 3 run damage @s 14 player_attack
execute if score @p swordtier matches 4 run damage @s 16 player_attack

execute at @p run playsound minecraft:entity.player.attack.strong player @p ~ ~ ~ 1 1

tag @s add tphit
scoreboard players set tphit dummy 1
execute if entity @s[nbt=!{Invulnerable:1b}] run data merge entity @s {HurtTime:15s}