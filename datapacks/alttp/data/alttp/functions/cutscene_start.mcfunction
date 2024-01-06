scoreboard players set tick cutscene 0
scoreboard players set active cutscene 1
# title @a times 10t 10t 10t
# title @a title ["","\uE006"]
kill @e[type=marker,tag=cutscenemarker]
summon marker ~ ~ ~ {Tags:["cutscenemarker"]}
tp @e[type=marker,tag=cutscenemarker] @p