#FIND LINKED ENTITY
tag @s add link_a
execute at @s as @e[type=silverfish,tag=octoroksf] if score @s enemylink = @e[type=armor_stand,tag=octorok,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#SPITTING
scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 70 unless entity @s[tag=icerodfrozen] run summon armor_stand ~ ~-1.3 ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;915944579,617759624,-1509214886,1134866540],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhkODE4ZTY1ZWUzNmNkY2FiNmUzMTVmNDk5ZDNmNWRkZTIzMjNiZjJkZjU2ZjFlOTE0MDg5Y2ViZWZhMzdmNiJ9fX0="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["octorokrok","enemy"]}
execute if score @s enemydummy matches 70 unless entity @s[tag=icerodfrozen] run playsound alttp.throw weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 70 unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=octorokrok,limit=1,sort=nearest] ~ ~-1.3 ~ ~ 0

execute if score @s enemydummy matches 80 unless entity @s[tag=icerodfrozen] run summon armor_stand ~ ~-1.3 ~ {ArmorItems:[{},{},{},{components:{"minecraft:profile":{id:[I;915944579,617759624,-1509214886,1134866540],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhkODE4ZTY1ZWUzNmNkY2FiNmUzMTVmNDk5ZDNmNWRkZTIzMjNiZjJkZjU2ZjFlOTE0MDg5Y2ViZWZhMzdmNiJ9fX0="}]}},count:1,id:"minecraft:player_head"}],Invisible:1b,Marker:1b,Tags:["octorokrok","enemy"]}
execute if score @s enemydummy matches 80 unless entity @s[tag=icerodfrozen] run playsound alttp.throw weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 80 unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=octorokrok,limit=1,sort=nearest] ~ ~-1.3 ~ ~ 0

execute if score @s enemydummy matches 80 run scoreboard players set @s enemydummy 1

#DAMAGING
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 2
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 30
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a