scoreboard players add @p heartpieces 1
tellraw @p ["","You got a ",{"text":"heart piece","color":"red"},"! You have ",{"score":{"name":"@p","objective":"heartpieces"},"color":"gold"},{"text":"/4","color":"gold"}," pieces."]
execute at @p run playsound minecraft:alttp.itemget weather @p ~ ~ ~ 1 1