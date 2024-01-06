execute as @e[type=armor_stand,tag=pegasusloc] at @s unless block ~ ~ ~ #gothrough run function alttp:pegasusend
execute as @e[type=armor_stand,tag=pegasusloc] at @s unless block ~ ~1 ~ #gothrough run function alttp:pegasusend
execute as @e[type=armor_stand,tag=pegasusloc] at @s if block ~ ~-1 ~ #gothrough run function alttp:pegasusend
execute as @e[type=armor_stand,tag=pegasusloc] at @s rotated ~ 0 unless block ^-1 ^ ^ #gothrough run function alttp:pegasusend
execute as @e[type=armor_stand,tag=pegasusloc] at @s rotated ~ 0 unless block ^1 ^ ^ #gothrough run function alttp:pegasusend

execute as @e[type=armor_stand,tag=pegasusloc] at @s if block ~ ~ ~ nether_sprouts run function alttp:pegasusloot