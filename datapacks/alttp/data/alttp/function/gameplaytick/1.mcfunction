gamemode adventure @p
execute as @p at @s run tp @s ~ ~ ~ -90 0
ride @p mount @e[type=minecart,tag=begin_mc,limit=1]

execute if score wakewhite gameplay matches 0 run title @p times 0t 5t 0t
execute if score wakewhite gameplay matches 0 run title @p title "\uE014"

item replace entity @p hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.1 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.2 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.3 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.4 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.5 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.6 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.7 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1
item replace entity @p hotbar.8 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}'] 1