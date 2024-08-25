#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=sluggulasf] if score @s enemylink = @e[type=armor_stand,tag=sluggula,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#BOMBY
scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 100.. run summon armor_stand ~ ~-1.5 ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;648561899,1029393552,-1943785490,805916791],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RiZTcxODYxNmY1NzVhM2NlZmE3NGY3NjI4OGFlMGI5MzU0ODlhM2Y3ZjJmMzIxYTlmYTIzYzVlMzU1ODc4ZCJ9fX0="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["bomb","sluggulabomb"]}

execute if score @s enemydummy matches 100.. run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a