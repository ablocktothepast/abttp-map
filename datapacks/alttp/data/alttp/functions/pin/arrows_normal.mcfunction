$execute unless entity @p[nbt={SelectedItemSlot:8}] run item replace entity @s hotbar.8 with arrow $(arrows)
$execute if entity @p[nbt={SelectedItemSlot:8}] run item replace entity @s hotbar.8 with ender_eye{CustomModelData:2,display:{Name:'{"text":"Arrow","color":"white","italic":false}'}} $(arrows)