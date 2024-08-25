# tp @p 27 56 11 -90 0
function alttp:init

# execute if entity @p[name="CasperThePancake"] run tp @p 127 -61 4
# execute if entity @p[name="CasperThePancake"] run tellraw @p ["","Choose a location:","\n",{"text":"[Link's House]","color":"green","clickEvent":{"action":"run_command","value":"/tp @p -96 -2 561"}},"\n",{"text":"[Sanctuary]","color":"green","clickEvent":{"action":"run_command","value":"/tellraw @p \"Not added yet!\""}},"\n",{"text":"[TESTING]","color":"green","clickEvent":{"action":"run_command","value":"/tp @p 6925 63 6880"}}]
scoreboard players set @s gamesquit 0

schedule clear alttp:100tick
schedule clear alttp:10tick
schedule clear alttp:40tick
schedule function alttp:100tick 5s
schedule function alttp:10tick 10t
schedule function alttp:40tick 40t