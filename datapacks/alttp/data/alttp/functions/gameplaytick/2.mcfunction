gamemode spectator @p

scoreboard players add wakecutscene gameplay 1

execute if score wakecutscene gameplay matches ..85 run tp @p -318.0 9 584 90 90
execute if score wakecutscene gameplay matches ..85 run effect give @p slowness infinite 5 true

execute if score wakecutscene gameplay matches 86 run tp @p -317 6.7 584 90 -25
execute if score wakecutscene gameplay matches 87.. run tp @p -317 6.7 584

execute if score wakecutscene gameplay matches 86..91 at @p run tp @p ~ ~ ~ ~ ~0.85
execute if score wakecutscene gameplay matches 92..94 at @p run tp @p ~ ~ ~ ~ ~0.6
execute if score wakecutscene gameplay matches 95..97 at @p run tp @p ~ ~ ~ ~ ~0.4
execute if score wakecutscene gameplay matches 98..99 at @p run tp @p ~ ~ ~ ~ ~0.2

execute if score wakecutscene gameplay matches 100..180 run tp @p -317 6.7 584 90 -16.5

execute if score wakecutscene gameplay matches 180.. run function alttp:gameplay_impulse/woken_up