scoreboard players set # gameplay 3
gamemode adventure @p
effect clear @p invisibility
tp @p -319 7.7 584 -90 0
kill @e[type=minecart,tag=wakecart]
summon minecart -319 7.5 584 {Tags:["wakecart"],NoGravity:1b}
ride @p mount @e[type=minecart,tag=wakecart,limit=1]
bossbar set blackbars visible false

##Initiate NPCs in town
function alttp:npcs/town

function animated_java:villager_link/remove/all
effect clear @p slowness

scoreboard players set unclewalkedout gameplay 0