execute if score applebasket gameplay matches 1 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:315}}]}] run clear @p carrot_on_a_stick{CustomModelData:315}
execute if score applebasket gameplay matches 1 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{CustomModelData:315}}]}] unless score active dialogue matches 1 unless score menu quests matches 1 run item replace entity @p hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Apple Basket","color":"gold","italic":false}',Lore:['{"text":"Quest Item","color":"red","italic":false}','{"text":"A standard delivery of 6 apples","color":"white","italic":false}','{"text":"for Owen.","color":"white","italic":false}']},CustomModelData:315} 1

execute store result score time dummy run time query daytime
execute if score time dummy matches ..10000 run gamerule doDaylightCycle true
execute if score time dummy matches 10001.. run gamerule doDaylightCycle false