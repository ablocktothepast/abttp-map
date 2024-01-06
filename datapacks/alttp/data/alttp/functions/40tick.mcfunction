#RUN COMMANDS
tag @e[type=item_display,tag=shop_item,tag=animate] remove animate
execute at @p run tag @e[type=item_display,tag=shop_item,distance=..15] add animate

#RESCHEDULE
schedule function alttp:40tick 40t