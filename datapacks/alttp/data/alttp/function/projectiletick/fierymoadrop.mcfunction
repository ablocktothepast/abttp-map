execute positioned ~ ~2 ~ if block ~ ~-0.1 ~ #gothrough at @s run tp @s ~ ~-0.1 ~
execute positioned ~ ~2 ~ if block ~ ~-0.05 ~ #gothrough at @s run tp @s ~ ~-0.05 ~
execute positioned ~ ~2 ~ unless block ~ ~-0.05 ~ #gothrough at @s run summon marker ~ ~2 ~ {Tags:["fierymoafire"]}
execute positioned ~ ~2 ~ unless block ~ ~-0.05 ~ #gothrough at @s run kill @s

tag @s add enemy_projectile