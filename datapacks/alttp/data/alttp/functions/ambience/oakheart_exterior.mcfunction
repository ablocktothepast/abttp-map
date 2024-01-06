stopsound @p weather minecraft:alttp.noise_birds_exterior
stopsound @p weather minecraft:alttp.noise_birds_interior
schedule clear alttp:ambience/oakheart_exterior
schedule clear alttp:ambience/oakheart_interior
execute as @p at @s run playsound minecraft:alttp.noise_birds_exterior weather @p

schedule function alttp:ambience/oakheart_exterior 1320t