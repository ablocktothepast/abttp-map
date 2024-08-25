execute if entity @s[tag=heartpiecelog] as @p run function alttp:give/heart_piece
execute if entity @s[tag=heartpiecelog] as @p run scoreboard players set heartpiecelog gameplay 0
execute if entity @s[tag=heartpiecelog] run kill @s