data merge entity @s {data:{active:0b}}

execute store result storage test deactivate int 1 run data get entity @s data.clusterid
function alttp:clusters/deactivate_macro with storage test