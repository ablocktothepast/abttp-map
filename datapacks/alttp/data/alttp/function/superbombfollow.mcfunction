execute at @s positioned ~ ~0.7 ~ unless entity @p[distance=..1.5] facing entity @p eyes rotated ~ 0 if block ^ ^ ^0.3 #gothrough run tp @s ^ ^-0.7 ^0.3 ~ ~
execute at @s positioned ~ ~0.7 ~ if block ~ ~-0.1 ~ #gothrough at @s run tp @s ~ ~-0.1 ~

execute unless entity @p[distance=..10] positioned ~ ~0.7 ~ run function alttp:place_superbomb
execute unless entity @p[distance=..10] run kill @s

execute if entity @s[tag=active] positioned ~ ~0.7 ~ run function alttp:place_superbomb
execute if entity @s[tag=active] run kill @s