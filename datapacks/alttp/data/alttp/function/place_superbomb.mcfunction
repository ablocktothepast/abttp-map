summon armor_stand ~ ~-1.4 ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;622363098,-1541127731,-1191107999,-1441265791],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RiZTcxODYxNmY1NzVhM2NlZmE3NGY3NjI4OGFlMGI5MzU0ODlhM2Y3ZjJmMzIxYTlmYTIzYzVlMzU1ODc4ZCJ9fX0="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["superbomb"]}
scoreboard players set @e[type=armor_stand,tag=superbomb,limit=1,sort=nearest] bombtick 60
kill @s
playsound alttp.lay_bomb weather @p ~ ~ ~ 1 1