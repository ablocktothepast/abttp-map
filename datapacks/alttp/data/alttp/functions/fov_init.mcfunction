scoreboard players add fov_init dummy 1

tp @p -291 14 515 0 0
item replace entity @p hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}

execute if score fov_init dummy matches 2 run title @p times 10t 5s 10t
execute if score fov_init dummy matches 2 run title @a title "Before we begin..."
execute if score fov_init dummy matches 2 run title @a subtitle "let's choose an FOV..."

execute if score fov_init dummy matches 123 run title @p times 10t 9999s 10t
execute if score fov_init dummy matches 123 run title @a title "60 / 70 / 85 / 110"
execute if score fov_init dummy matches 123 run title @a subtitle "Set your FOV to one of these, sneak to continue..."
execute if score fov_init dummy matches 123 run scoreboard objectives remove fovsneak
execute if score fov_init dummy matches 123 run scoreboard objectives add fovsneak minecraft.custom:minecraft.sneak_time

execute if score fov_init dummy matches 180 if score @p fovsneak matches 1.. run scoreboard players set fov_init dummy 230
execute if score fov_init dummy matches 180 run scoreboard players remove fov_init dummy 1

execute if score fov_init dummy matches 235 run title @p times 0t 9999s 10t
execute if score fov_init dummy matches 235 run title @a subtitle "Great, now scroll and sneak to select your choice..."
execute if score fov_init dummy matches 235..299 if score choice fovsneak matches 1 run title @a title ["",{"text":"60","color":"gold"}," / ",{"text":"70","color":"white"}," / ",{"text":"85","color":"white"}," / ",{"text":"110","color":"white"}]
execute if score fov_init dummy matches 235..299 if score choice fovsneak matches 2 run title @a title ["",{"text":"60","color":"white"}," / ",{"text":"70","color":"gold"}," / ",{"text":"85","color":"white"}," / ",{"text":"110","color":"white"}]
execute if score fov_init dummy matches 235..299 if score choice fovsneak matches 3 run title @a title ["",{"text":"60","color":"white"}," / ",{"text":"70","color":"white"}," / ",{"text":"85","color":"gold"}," / ",{"text":"110","color":"white"}]
execute if score fov_init dummy matches 235..299 if score choice fovsneak matches 4 run title @a title ["",{"text":"60","color":"white"}," / ",{"text":"70","color":"white"}," / ",{"text":"85","color":"white"}," / ",{"text":"110","color":"gold"}]
execute if score fov_init dummy matches 235 run scoreboard players reset @p fovsneak
execute if score fov_init dummy matches 235 run scoreboard players set choice fovsneak 1

execute if score fov_init dummy matches 235 run scoreboard players reset @p fovsneak

#Scroll detection
execute if score fov_init dummy matches 235..299 store result score slotselect fovsneak run data get entity @p SelectedItemSlot
execute if score fov_init dummy matches 235..299 unless score oldslotselect fovsneak = slotselect fovsneak run function alttp:fov_init_slotmove

execute if score fov_init dummy matches 280 if score @p fovsneak matches 1.. run scoreboard players set fov_init dummy 300
execute if score fov_init dummy matches 280 run scoreboard players remove fov_init dummy 1

execute if score fov_init dummy matches 300 if score choice fovsneak matches 1 run scoreboard players set dlfov options 60
execute if score fov_init dummy matches 300 if score choice fovsneak matches 2 run scoreboard players set dlfov options 70
execute if score fov_init dummy matches 300 if score choice fovsneak matches 3 run scoreboard players set dlfov options 85
execute if score fov_init dummy matches 300 if score choice fovsneak matches 4 run scoreboard players set dlfov options 110
execute if score fov_init dummy matches 300 run title @p times 10t 5s 10t
execute if score fov_init dummy matches 300 run title @a title "That is all..."
execute if score fov_init dummy matches 300 run title @a subtitle "Enjoy the game!"

execute if score fov_init dummy matches 420 run function alttp:startgame
execute if score fov_init dummy matches 420 run scoreboard players set fov_init dummy 0