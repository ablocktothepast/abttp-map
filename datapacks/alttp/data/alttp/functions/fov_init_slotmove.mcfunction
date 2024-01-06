execute if score slotselect fovsneak matches 0 if score oldslotselect fovsneak matches 8 run scoreboard players add choice fovsneak 1
execute if score slotselect fovsneak matches 0 if score oldslotselect fovsneak matches 8 store result score oldslotselect fovsneak run scoreboard players get slotselect fovsneak

execute if score slotselect fovsneak matches 8 if score oldslotselect fovsneak matches 0 run scoreboard players remove choice fovsneak 1
execute if score slotselect fovsneak matches 8 if score oldslotselect fovsneak matches 0 store result score oldslotselect fovsneak run scoreboard players get slotselect fovsneak

execute if score slotselect fovsneak < oldslotselect fovsneak run scoreboard players remove choice fovsneak 1

execute if score slotselect fovsneak > oldslotselect fovsneak run scoreboard players add choice fovsneak 1

execute store result score oldslotselect fovsneak run scoreboard players get slotselect fovsneak

execute if score choice fovsneak matches ..0 run scoreboard players set choice fovsneak 4
execute if score choice fovsneak matches 5.. run scoreboard players set choice fovsneak 1

execute at @p run playsound alttp.cursor weather @p