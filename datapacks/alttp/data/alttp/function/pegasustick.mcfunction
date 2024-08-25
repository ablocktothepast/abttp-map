scoreboard players add @s pegasusb 1
scoreboard players add pegasusmagic dummy 1
attribute @s generic.movement_speed base set 0.3

execute if score pegasusmagic dummy matches 5.. unless score @p magic matches 1.. run function alttp:pegasusend
execute if score pegasusmagic dummy matches 5.. run scoreboard players remove @p magic 1
execute if score pegasusmagic dummy matches 5.. run scoreboard players set pegasusmagic dummy 0

execute if score @s pegasusb matches 15.. unless score pegasusexit dummy matches 1 if score @s pegasussneak = pegasusold dummy run scoreboard players set pegasusexit dummy 1
execute if score @s pegasusb matches 15.. if score @s pegasussneak = pegasusold dummy if score pegasusexit dummy matches 1 run scoreboard players set @s pegasussneak 0
execute if score @s pegasusb matches 20.. if score pegasusexit dummy matches 1 if score @s pegasussneak matches 1.. run function alttp:pegasusend

execute store result score pegasusold dummy run scoreboard players get @s pegasussneak