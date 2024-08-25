data merge entity @s {data:{active:1b}}

execute store result storage test activate int 1 run data get entity @s data.clusterid

function alttp:clusters/activate_macro with storage test