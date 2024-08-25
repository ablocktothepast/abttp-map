scoreboard players add @s dummy 1

execute if score @s dummy matches 1..2 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-1 #gothrough run tp @p ^ ^ ^-0.8
execute if score @s dummy matches 3..4 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-0.9 #gothrough run tp @p ^ ^ ^-0.7
execute if score @s dummy matches 5..6 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-0.8 #gothrough run tp @p ^ ^ ^-0.6
execute if score @s dummy matches 7..8 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-0.7 #gothrough run tp @p ^ ^ ^-0.5
execute if score @s dummy matches 9..10 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-0.6 #gothrough run tp @p ^ ^ ^-0.4
execute if score @s dummy matches 10..11 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-0.5 #gothrough run tp @p ^ ^ ^-0.3
execute if score @s dummy matches 12..13 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-0.4 #gothrough run tp @p ^ ^ ^-0.2
execute if score @s dummy matches 14..15 at @p facing entity @s eyes rotated ~ 0 if block ^ ^ ^-0.3 #gothrough run tp @p ^ ^ ^-0.1

execute if score @s dummy matches 15.. run kill @s