#See if other slots have it and remove if so
execute if score @p spw_1 = @p spw_3_go run scoreboard players set @p spw_1 0
execute if score @p spw_2 = @p spw_3_go run scoreboard players set @p spw_2 0
execute store result score @p spw_3 run scoreboard players get @p spw_3_go

scoreboard players set @p spw_3_go 0