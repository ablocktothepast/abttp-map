scoreboard players remove @p rupees 25
scoreboard players set oakheart_alden_4 shops 0
kill @e[type=item_display,tag=oakheart_alden,tag=4]
kill @e[type=text_display,tag=oakheart_alden,tag=4]
scoreboard players set oakheart_secret keys 1
execute at @p run playsound minecraft:alttp.itemget weather @p ~ ~ ~ 1 1