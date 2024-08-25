##Loop
scoreboard players add tploop dummy 1
execute at @s rotated as @p rotated ~ ~-5 rotated ~ ~180 run tp @s ^ ^ ^0.05 ~ ~
scoreboard players set tploopp dummy 0
execute at @s unless score tploop dummy >= tpz dummy rotated as @p rotated ~ ~-5 rotated ~ ~180 positioned ~ ~1 ~ if block ^ ^ ^0.1 #gothrough if block ^ ^ ^0.01 #gothrough if block ^ ^ ^0.2 #gothrough if block ^ ^ ^0.3 #gothrough if block ^ ^ ^0.4 #gothrough if block ^ ^ ^0.5 #gothrough run scoreboard players set tploopp dummy 1
execute at @s unless score tploop dummy >= tpz dummy rotated as @p rotated ~ ~-5 rotated ~ ~180 positioned ~ ~1 ~ if block ^ ^ ^0.1 #gothrough if block ^ ^ ^0.01 #gothrough if block ^ ^ ^0.2 #gothrough if block ^ ^ ^0.3 #gothrough if block ^ ^ ^0.4 #gothrough if block ^ ^ ^0.5 #gothrough run function alttp:thirdperson/loop
##End loop
execute at @s if score tploopp dummy matches 0 rotated as @p rotated ~ ~-5 rotated ~ ~180 run tp @e[type=area_effect_cloud,tag=thirdperson_marker] ^ ^ ^-0.2
execute at @s if score tploopp dummy matches 0 as @p at @s rotated as @p unless block ~ ~1.67 ~ #gothrough as @e[type=area_effect_cloud,tag=thirdperson_marker] at @s run tp @s ~ ~-0.1 ~
execute at @s if score tploopp dummy matches 0 as @p at @s rotated as @p unless block ~ ~1.67 ~ #gothrough as @e[type=area_effect_cloud,tag=thirdperson_marker] at @s run tp @s ~ ~-0.1 ~
execute at @s if score tploopp dummy matches 0 as @p at @s rotated as @p unless block ~ ~1.67 ~ #gothrough as @e[type=area_effect_cloud,tag=thirdperson_marker] at @s run tp @s ~ ~-0.1 ~
execute at @s if score tploopp dummy matches 0 as @p at @s rotated as @p unless block ~ ~1.67 ~ #gothrough as @e[type=area_effect_cloud,tag=thirdperson_marker] at @s run tp @s ~ ~-0.1 ~
execute at @s if score tploopp dummy matches 0 as @p at @s rotated as @p unless block ~ ~1.67 ~ #gothrough as @e[type=area_effect_cloud,tag=thirdperson_marker] at @s run tp @s ~ ~-0.1 ~
execute at @s if score tploopp dummy matches 0 as @p at @s rotated as @p unless block ~ ~1.67 ~ #gothrough as @e[type=area_effect_cloud,tag=thirdperson_marker] at @s run tp @s ~ ~-0.1 ~
execute at @s if score tploopp dummy matches 0 as @p at @s rotated as @p unless block ~ ~1.67 ~ #gothrough as @e[type=area_effect_cloud,tag=thirdperson_marker] at @s run tp @s ~ ~-0.1 ~