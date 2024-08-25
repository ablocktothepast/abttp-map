scoreboard players add . tiletimer 1

execute if score . tiletimer matches 60 run tag @e[type=armor_stand,tag=flying_tile,tag=!activated,distance=..12,limit=1,sort=random] add activated

execute if score . tiletimer matches 70.. run scoreboard players set . tiletimer 0