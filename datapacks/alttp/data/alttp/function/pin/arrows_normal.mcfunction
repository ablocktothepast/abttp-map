execute unless entity @s[nbt={SelectedItemSlot:8}] if score @p quiverlevel matches 1 run item replace entity @s hotbar.8 with minecraft:arrow[minecraft:custom_model_data=1] 1
execute unless entity @s[nbt={SelectedItemSlot:8}] if score @p quiverlevel matches 2 run item replace entity @s hotbar.8 with minecraft:arrow[minecraft:custom_model_data=2] 1
execute unless entity @s[nbt={SelectedItemSlot:8}] if score @p quiverlevel matches 3 run item replace entity @s hotbar.8 with minecraft:arrow[minecraft:custom_model_data=3] 1
$execute if entity @s[nbt={SelectedItemSlot:8}] if score @p quiverlevel matches 1 run item replace entity @s hotbar.8 with minecraft:ender_eye[minecraft:custom_model_data=2,minecraft:custom_name='{"text":"Arrow ($(arrows))","color":"white","italic":false}'] 1
$execute if entity @s[nbt={SelectedItemSlot:8}] if score @p quiverlevel matches 2 run item replace entity @s hotbar.8 with minecraft:ender_eye[minecraft:custom_model_data=3,minecraft:custom_name='{"text":"Arrow ($(arrows))","color":"white","italic":false}'] 1
$execute if entity @s[nbt={SelectedItemSlot:8}] if score @p quiverlevel matches 3 run item replace entity @s hotbar.8 with minecraft:ender_eye[minecraft:custom_model_data=4,minecraft:custom_name='{"text":"Arrow ($(arrows))","color":"white","italic":false}'] 1