tp @p ~ ~ ~
execute if score @s hasmoonpearl matches 1 run scoreboard players set @s bunny 0
execute unless score @s hasmoonpearl matches 1 run scoreboard players set @s bunny 1
execute unless score @s hasmoonpearl matches 1 run summon rabbit ~ ~ ~ {Tags:["darkbunny"],Silent:1b,Invulnerable:1b,NoAI:1b}