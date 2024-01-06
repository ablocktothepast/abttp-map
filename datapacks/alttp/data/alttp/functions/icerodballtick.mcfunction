tp ^ ^ ^0.4
execute unless block ~ ~1 ~ air run function alttp:icerodboom
execute at @s if entity @e[tag=enemy,distance=..0.75] run function alttp:icerodboom
execute at @s positioned ~ ~1 ~ if entity @e[tag=enemy,distance=..0.75] run function alttp:icerodboom

particle snowflake ~ ~1.4 ~ 0.1 0.1 0.1 0 1 force