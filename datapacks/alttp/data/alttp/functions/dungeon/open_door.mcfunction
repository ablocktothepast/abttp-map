##Detect current location of player
kill @e[type=marker,tag=door_loc_detect]
summon marker ^ ^ ^-1 {Tags:["door_loc_detect","back"]}
summon marker ^ ^ ^1 {Tags:["door_loc_detect","front"]}
execute at @p run tag @e[type=marker,tag=door_loc_detect,limit=1,sort=nearest] add closest

##Start "cutscene"
kill @e[type=villager,tag=doorcutscene]
execute at @e[type=marker,tag=door_loc_detect,tag=closest] facing entity @s eyes positioned ~ ~-0.5 ~ run summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["doorcutscene"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:255,ShowParticles:0b}]}
execute at @e[type=marker,tag=door_loc_detect,tag=closest] facing entity @s eyes positioned ~ ~-0.5 ~ run tp @e[type=villager,tag=doorcutscene] ~ ~ ~ ~ ~
scoreboard players set . dungeondoor -5
tag @s add dungeondoor_opening