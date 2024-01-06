summon item ^ ^1 ^ {PickupDelay:32767,Tags:["throwbomb"],Item:{id:"minecraft:tnt",Count:1b,tag:{display:{Name:'{"text":"Bomb","color":"blue","italic":false}',Lore:['{"text":"Throw to place a bomb.","color":"white","italic":false}']},Enchantments:[{}]}}}


execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=..1] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-2 run function alttp:enemy_throwbomb_a
execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=1..2] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-4 run function alttp:enemy_throwbomb_a
execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=2..3] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-6 run function alttp:enemy_throwbomb_a
execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=3..4] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-9 run function alttp:enemy_throwbomb_a
execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=4..5] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-11 run function alttp:enemy_throwbomb_a
execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=5..6] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-13 run function alttp:enemy_throwbomb_a
execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=6..7] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-15 run function alttp:enemy_throwbomb_a
execute as @e[type=item,tag=throwbomb] at @s if entity @p[distance=7..] rotated as @e[type=zombie,tag=link_b] rotated ~ ~-17 run function alttp:enemy_throwbomb_a

playsound alttp.throw weather @p ~ ~ ~ 1 1