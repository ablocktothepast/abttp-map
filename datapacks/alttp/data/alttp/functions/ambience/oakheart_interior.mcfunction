stopsound @p weather minecraft:alttp.noise_birds_exterior
stopsound @p weather minecraft:alttp.noise_birds_interior
schedule clear alttp:ambience/oakheart_exterior
schedule clear alttp:ambience/oakheart_interior
execute as @p at @s run playsound minecraft:alttp.noise_birds_interior weather @p ~ ~ ~ 1 1

schedule function alttp:ambience/oakheart_interior 1215t