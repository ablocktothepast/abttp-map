scoreboard players set # gameplay 3
gamemode adventure @p
effect clear @p invisibility
tp @p -319 7.7 584 -90 0
bossbar set blackbars visible false

##Initiate NPCs in town
function alttp:npcs/town

function animated_java:villager_link/remove/all
effect clear @p slowness

scoreboard players set unclewalkedout gameplay 0