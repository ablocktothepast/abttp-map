summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stal","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:273}},{}]}
summon silverfish ~ ~ ~ {Silent:1b,Health:20f,Tags:["enemy","stalsf"],active_effects:[{show_icon:0b,id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b,ambient:0b}],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 114

#LINK THEM
execute store result score @e[type=armor_stand,tag=stal,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=stalsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1