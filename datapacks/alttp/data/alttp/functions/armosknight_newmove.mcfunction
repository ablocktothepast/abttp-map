#Store old attack
execute store result score @s enemydummy5 run scoreboard players get @s enemydummy

#Possible next moves
execute if score @s enemydummy matches 1..3 run scoreboard players set @s enemydummy3 0
execute if score @s enemydummy matches 4..7 run scoreboard players set @s enemydummy3 1
execute if score @s enemydummy matches 11..14 run scoreboard players set @s enemydummy3 1

#Do it
execute if score @s enemydummy3 matches 0 store result score result rand run random value 1..25
execute if score @s enemydummy3 matches 0 if score result rand matches 1..2 run scoreboard players set @s enemydummy 1
execute if score @s enemydummy3 matches 0 if score result rand matches 3..4 run scoreboard players set @s enemydummy 2
execute if score @s enemydummy3 matches 0 if score result rand matches 5..7 run scoreboard players set @s enemydummy 3
execute if score @s enemydummy3 matches 0 if score result rand matches 8 run scoreboard players set @s enemydummy 4
execute if score @s enemydummy3 matches 0 if score result rand matches 9 run scoreboard players set @s enemydummy 5
execute if score @s enemydummy3 matches 0 if score result rand matches 10 run scoreboard players set @s enemydummy 6
execute if score @s enemydummy3 matches 0 if score result rand matches 11 run scoreboard players set @s enemydummy 7
execute if score @s enemydummy3 matches 0 if score result rand matches 12..13 run scoreboard players set @s enemydummy 8
execute if score @s enemydummy3 matches 0 if score result rand matches 14..15 run scoreboard players set @s enemydummy 9
execute if score @s enemydummy3 matches 0 if score result rand matches 16..17 run scoreboard players set @s enemydummy 10
execute if score @s enemydummy3 matches 0 if score result rand matches 18 run scoreboard players set @s enemydummy 11
execute if score @s enemydummy3 matches 0 if score result rand matches 19 run scoreboard players set @s enemydummy 12
execute if score @s enemydummy3 matches 0 if score result rand matches 20 run scoreboard players set @s enemydummy 13
execute if score @s enemydummy3 matches 0 if score result rand matches 21 run scoreboard players set @s enemydummy 14
execute if score @s enemydummy3 matches 0 if score result rand matches 22..25 run scoreboard players set @s enemydummy 15

execute if score @s enemydummy3 matches 1 run scoreboard players set @s enemydummy 1

#Random timer
execute store result score result rand run random value 1..150
scoreboard players add result rand 50
execute unless score @s enemydummy3 matches 1 store result score @s enemydummy4 run scoreboard players get result rand

#Init moves
execute if score @s enemydummy matches 2..3 run tp @s ~ ~ ~ 180 ~
execute if score @s enemydummy matches 8..9 run tp @s ~ ~ ~ 180 ~
execute if score @s enemydummy matches 15 run scoreboard players set @s enemydummy4 120

#Other variables
execute unless score @s enemydummy = @s enemydummy5 run scoreboard players set @s enemydummy2 0