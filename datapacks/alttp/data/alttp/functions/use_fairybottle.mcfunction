playsound alttp.fairy weather @s ~ ~ ~ 1 1

clear @s carrot_on_a_stick{CustomModelData:48} 1
function alttp:give/empty_bottle

effect give @s minecraft:regeneration 2 4 true

tellraw @p ["",{"text":"[Fairy] ","color":"dark_purple"},"Allow me to heal your wounds, master Link!"]