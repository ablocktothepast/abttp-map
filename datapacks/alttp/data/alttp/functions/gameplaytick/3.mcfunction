execute positioned -313.5 -1 585.0 if entity @p[distance=..1] run function alttp:gameplay_impulse/woken_up_uncle_downstairs

execute unless data entity @p RootVehicle run kill @e[type=minecart,tag=wakecart]