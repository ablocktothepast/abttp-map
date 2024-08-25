execute if score slotselect dialogue matches 0 if score oldslotselect dialogue matches 8 run scoreboard players add choice dialogue 1
execute if score slotselect dialogue matches 0 if score oldslotselect dialogue matches 8 if score id dialogue matches -1 run scoreboard players add dlfov options 10
execute if score slotselect dialogue matches 0 if score oldslotselect dialogue matches 8 store result score oldslotselect dialogue run scoreboard players get slotselect dialogue

execute if score slotselect dialogue matches 8 if score oldslotselect dialogue matches 0 run scoreboard players remove choice dialogue 1
execute if score slotselect dialogue matches 8 if score oldslotselect dialogue matches 0 if score id dialogue matches -1 run scoreboard players remove dlfov options 10
execute if score slotselect dialogue matches 8 if score oldslotselect dialogue matches 0 store result score oldslotselect dialogue run scoreboard players get slotselect dialogue

execute if score slotselect dialogue < oldslotselect dialogue run scoreboard players remove choice dialogue 1
execute if score slotselect dialogue < oldslotselect dialogue if score id dialogue matches -1 run scoreboard players remove dlfov options 10

execute if score slotselect dialogue > oldslotselect dialogue run scoreboard players add choice dialogue 1
execute if score slotselect dialogue > oldslotselect dialogue if score id dialogue matches -1 run scoreboard players add dlfov options 10

execute store result score oldslotselect dialogue run scoreboard players get slotselect dialogue

execute if score choices dialogue matches 2 if score choice dialogue matches ..0 run scoreboard players set choice dialogue 2
execute if score choices dialogue matches 3 if score choice dialogue matches ..0 run scoreboard players set choice dialogue 3

execute if score choices dialogue matches 2 if score choice dialogue matches 3.. run scoreboard players set choice dialogue 1
execute if score choices dialogue matches 3 if score choice dialogue matches 4.. run scoreboard players set choice dialogue 1

execute if score id dialogue matches -1 at @p run playsound alttp.cursor weather @p
execute if score id dialogue matches -1 at @p run scoreboard players set na_float dialogue 100

execute if score dlfov options matches 111.. run scoreboard players set dlfov options 110
execute if score dlfov options matches ..29 run scoreboard players set dlfov options 30

execute if score choicedialogue dialogue matches 1 run function alttp:dialogue_ids
execute if score choicedialogue dialogue matches 1 at @p run playsound alttp.cursor weather @p