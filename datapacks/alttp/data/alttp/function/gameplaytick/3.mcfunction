execute positioned -314 -1 585.0 if entity @p[distance=..1.5] if score # gameplay matches 3 run function alttp:gameplay_impulse/woken_up_uncle_downstairs
execute positioned -314 0 585.0 if entity @p[distance=..1.5] if score # gameplay matches 3 run function alttp:gameplay_impulse/woken_up_uncle_downstairs

execute unless data entity @p RootVehicle run kill @e[type=minecart,tag=wakecart]