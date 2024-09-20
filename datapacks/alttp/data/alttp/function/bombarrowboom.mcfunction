summon creeper ~ ~1.5 ~ {Fuse:0,ignited:1b,Attributes:[{Name:generic.attack_damage,Base:1}]}
particle minecraft:explosion_emitter
execute as @e[tag=inv_bomb,tag=enemy,distance=..7] run damage @s 20
execute as @e[tag=bomb_weak,tag=enemy,distance=..7] run scoreboard players set @s force_damage 50
kill @s