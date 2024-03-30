execute if score . thirdperson matches 1 run data remove entity @e[type=interaction,tag=thirdperson_interaction,limit=1] interaction

execute as @a[tag=!hookshotting,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Hookshot","color":"gray","italic":false}',Lore:['{"text":"Right-click to shoot!","color":"white","italic":false}']},CustomModelData:7}}}] at @s unless block ~ ~-0.2 ~ #gothrough run function alttp:hookshot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{display:{Name:'{"text":"Pegasus Boots","color":"gold","italic":false}',Lore:['{"text":"Right-click to dash away!","color":"white","italic":false}']},CustomModelData:4}}}] run function alttp:usepegasus
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{display:{Name:'{"text":"Boomerang","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw!","color":"white","italic":false}']},CustomModelData:33}}}] run function alttp:useboomerang
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{display:{Name:'{"text":"Fire Rod","color":"red","italic":false}',Lore:['{"text":"Right-click to create a fireball.","color":"white","italic":false}']},CustomModelData:1}}}] run function alttp:fireroduse
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{display:{Name:'{"text":"Lamp","color":"#fcba03","italic":false}',Lore:['{"text":"Right-click to toggle light.","color":"white","italic":false}','{"text":"Shift to set on fire.","color":"white","italic":false}']},CustomModelData:3}}}] run function alttp:lampuse
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{display:{Name:'{"text":"Ice Rod","color":"#009FAB","italic":false}',Lore:['{"text":"Right-click to create an iceball.","color":"white","italic":false}']},CustomModelData:2}}}] run function alttp:iceroduse
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9}}}] unless score @s magic matches 1.. run tellraw @s {"text":"You're out of magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Powder","color":"aqua","italic":false}',Lore:['{"text":"Sprinkle it on your foes!","color":"white","italic":false}']},CustomModelData:9}}}] if score @s magic matches 1.. run function alttp:usemagicpowder

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:284,active:0}}}] run function alttp:bombuse

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:284,active:1}}}] run function alttp:activebombuse

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:13}}}] unless score @s magic matches 15.. run tellraw @s {"text":"Not enough magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:13}}}] if score @s magic matches 15.. run function alttp:usebombosmedallion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']},CustomModelData:14}}}] unless score @s magic matches 15.. run tellraw @s {"text":"Not enough magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Quake Medallion","color":"yellow","italic":false}',Lore:['{"text":"Jump high and rumble the ground!","color":"white","italic":false}']},CustomModelData:14}}}] if score @s magic matches 15.. run function alttp:usequakemedallion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']},CustomModelData:12}}}] unless score @s magic matches 15.. run tellraw @s {"text":"Not enough magic!","color":"dark_red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ether Medallion","color":"yellow","italic":false}',Lore:['{"text":"Can create a frosty combination.","color":"white","italic":false}']},CustomModelData:12}}}] if score @s magic matches 15.. run function alttp:useethermedallion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Quest Book","color":"blue","italic":false}',Lore:['{"text":"Right-click to view your quests!","color":"white","italic":false}']},CustomModelData:316}}}] if score 1 quests_2 matches 1 run function alttp:questm_open

# execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run playsound alttp.wallet weather @p ~ ~ ~ 1 1
# execute if score @s rupees matches 2.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run tellraw @p ["","You have ",{"score":{"name":"@s","objective":"rupees"},"color":"green"},{"text":" rupees","color":"green"},"."]
# execute if score @s rupees matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run tellraw @p ["","You have ",{"score":{"name":"@s","objective":"rupees"},"color":"green"},{"text":" rupee","color":"green"},"."]
# execute if score @s rupees matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] run tellraw @p ["","You are out of rupees!",""]

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Bug-Catching Net","color":"yellow","italic":false}',Lore:['{"text":"Right-click to catch!","color":"white","italic":false}']},CustomModelData:44}}}] run function alttp:bug_catch

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Fairy Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Right-click to release it!","color":"white","italic":false}']},CustomModelData:48}}}] run function alttp:use_fairybottle

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Bee Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Right-click to release it!","color":"white","italic":false}']},CustomModelData:47}}}] run function alttp:use_beebottle

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Golden Bee Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Right-click to release it!","color":"white","italic":false}']},CustomModelData:47}}}] run function alttp:use_goldenbeebottle

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Medicine of Life","color":"red","italic":false}',Lore:['{"text":"Restores you to full health.","color":"white","italic":false}']},CustomModelData:49}}}] run function alttp:other/witch/use_lifepotion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Medicine of Magic","color":"green","italic":false}',Lore:['{"text":"Fills up your magic meter.","color":"white","italic":false}']},CustomModelData:50}}}] run function alttp:other/witch/use_magicpotion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Medicine of Life & Magic","color":"blue","italic":false}',Lore:['{"text":"Restores you to full health and grants magic.","color":"white","italic":false}']},CustomModelData:51}}}] run function alttp:other/witch/use_lifemagicpotion

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Shovel","color":"gray","italic":false}',Lore:['{"text":"Find the Flute Boy\'s lost flute!","color":"white","italic":false}']},CustomModelData:52}}}] run function alttp:use_shovel

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53}}}] run function alttp:use_magical_boomerang

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Power Glove","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift heavy rocks!","color":"white","italic":false}']},CustomModelData:54}}}] run function alttp:use_power_glove

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Cape","color":"red","italic":false}',Lore:['{"text":"Right-click to turn invisible!","color":"white","italic":false}']},CustomModelData:58}}}] run function alttp:use_magic_cape

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Cane of Somaria","color":"dark_red","italic":false}',Lore:['{"text":"Right-click to create a block!","color":"white","italic":false}']},CustomModelData:60}}}] run function alttp:use_somaria

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Cane of Byrna","color":"blue","italic":false}',Lore:['{"text":"Right-click to toggle forcefield!","color":"white","italic":false}']},CustomModelData:61}}}] run function alttp:use_byrna

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Hammer","color":"red","italic":false}',Lore:['{"text":"Right-click to smash!","color":"white","italic":false}']},CustomModelData:62}}}] run function alttp:use_hammer

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Titan\'s Mitt","color":"gray","italic":false}',Lore:['{"text":"Right-click to lift the heaviest!","color":"white","italic":false}']},CustomModelData:63}}}] run function alttp:use_titansmitt

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Inventory","color":"gold","italic":false}',Lore:['{"text":"Right-click to open your inventory!","color":"white","italic":false}']}}}}] run function alttp:bm_open

scoreboard players set @s rightclick 0