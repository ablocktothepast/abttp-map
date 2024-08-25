execute store result score chealth dummy run data get entity @s Health
execute store result score cmaxhealth dummy run attribute @s generic.max_health get

scoreboard players operation chealth dummy -= cmaxhealth dummy
execute store result score @s set_damage run scoreboard players get chealth dummy