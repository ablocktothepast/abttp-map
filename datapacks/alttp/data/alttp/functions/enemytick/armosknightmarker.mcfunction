#enemydummy = selected mode
#enemydummy2 = timer
#enemydummy3 = mode chooser
#enemydummy4 = length of mode

#Different modes
execute unless score @s enemydummy4 matches 0.. run scoreboard players set @s enemydummy4 100
execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 1
scoreboard players add @s enemydummy2 1
execute if score @s enemydummy2 >= @s enemydummy4 run function alttp:armosknight_newmove

#1 = rectangle
execute if score @s enemydummy matches 1 run tp @e[type=marker,tag=ak1,tag=armosknightma] ~ ~ ~-4
execute if score @s enemydummy matches 1 run tp @e[type=marker,tag=ak2,tag=armosknightma] ~6 ~ ~-4
execute if score @s enemydummy matches 1 run tp @e[type=marker,tag=ak3,tag=armosknightma] ~-6 ~ ~-4
execute if score @s enemydummy matches 1 run tp @e[type=marker,tag=ak4,tag=armosknightma] ~ ~ ~4
execute if score @s enemydummy matches 1 run tp @e[type=marker,tag=ak5,tag=armosknightma] ~6 ~ ~4
execute if score @s enemydummy matches 1 run tp @e[type=marker,tag=ak6,tag=armosknightma] ~-6 ~ ~4

#2 = rotating circle, but larger
execute if score @s enemydummy matches 2 run tp @s ~ ~ ~ ~1 ~
execute if score @s enemydummy matches 2 rotated ~ ~ run tp @e[type=marker,tag=ak4,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 2 rotated ~60 ~ run tp @e[type=marker,tag=ak6,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 2 rotated ~120 ~ run tp @e[type=marker,tag=ak3,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 2 rotated ~180 ~ run tp @e[type=marker,tag=ak1,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 2 rotated ~-60 ~ run tp @e[type=marker,tag=ak5,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 2 rotated ~-120 ~ run tp @e[type=marker,tag=ak2,tag=armosknightma] ^ ^ ^11

#3 = rotating circle
execute if score @s enemydummy matches 3 run tp @s ~ ~ ~ ~2 ~
execute if score @s enemydummy matches 3 rotated ~ ~ run tp @e[type=marker,tag=ak4,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 3 rotated ~60 ~ run tp @e[type=marker,tag=ak6,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 3 rotated ~120 ~ run tp @e[type=marker,tag=ak3,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 3 rotated ~180 ~ run tp @e[type=marker,tag=ak1,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 3 rotated ~-60 ~ run tp @e[type=marker,tag=ak5,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 3 rotated ~-120 ~ run tp @e[type=marker,tag=ak2,tag=armosknightma] ^ ^ ^8

#4 = move X+
execute if score @s enemydummy matches 4 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 4 as @e[type=marker,tag=armosknightma] at @s unless block ~1.5 ~ ~ #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 4 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~0.2 ~ ~
execute if score @s enemydummy matches 4 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#5 = move X-
execute if score @s enemydummy matches 5 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 5 as @e[type=marker,tag=armosknightma] at @s unless block ~-1.5 ~ ~ #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 5 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~-0.2 ~ ~
execute if score @s enemydummy matches 5 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#6 = move Z+
execute if score @s enemydummy matches 6 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 6 as @e[type=marker,tag=armosknightma] at @s unless block ~ ~ ~1.5 #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 6 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~ ~ ~0.2
execute if score @s enemydummy matches 6 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#7 = move Z-
execute if score @s enemydummy matches 7 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 7 as @e[type=marker,tag=armosknightma] at @s unless block ~ ~ ~-1.5 #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 7 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~ ~ ~-0.2
execute if score @s enemydummy matches 7 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#8 = rotating circle, but opposite
execute if score @s enemydummy matches 8 run tp @s ~ ~ ~ ~-2 ~
execute if score @s enemydummy matches 8 rotated ~ ~ run tp @e[type=marker,tag=ak4,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 8 rotated ~60 ~ run tp @e[type=marker,tag=ak6,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 8 rotated ~120 ~ run tp @e[type=marker,tag=ak3,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 8 rotated ~180 ~ run tp @e[type=marker,tag=ak1,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 8 rotated ~-60 ~ run tp @e[type=marker,tag=ak5,tag=armosknightma] ^ ^ ^8
execute if score @s enemydummy matches 8 rotated ~-120 ~ run tp @e[type=marker,tag=ak2,tag=armosknightma] ^ ^ ^8

#9 = rotating circle, but larger, but opposite
execute if score @s enemydummy matches 9 run tp @s ~ ~ ~ ~-1 ~
execute if score @s enemydummy matches 9 rotated ~ ~ run tp @e[type=marker,tag=ak4,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 9 rotated ~60 ~ run tp @e[type=marker,tag=ak6,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 9 rotated ~120 ~ run tp @e[type=marker,tag=ak3,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 9 rotated ~180 ~ run tp @e[type=marker,tag=ak1,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 9 rotated ~-60 ~ run tp @e[type=marker,tag=ak5,tag=armosknightma] ^ ^ ^11
execute if score @s enemydummy matches 9 rotated ~-120 ~ run tp @e[type=marker,tag=ak2,tag=armosknightma] ^ ^ ^11

#10 = stop
execute if score @s enemydummy matches 10 run scoreboard players add @s enemydummy2 1

#11 = move X+ and Z+
execute if score @s enemydummy matches 11 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 11 as @e[type=marker,tag=armosknightma] at @s unless block ~1.5 ~ ~1.5 #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 11 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~0.2 ~ ~0.2
execute if score @s enemydummy matches 11 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#12 = move X- and Z+
execute if score @s enemydummy matches 12 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 12 as @e[type=marker,tag=armosknightma] at @s unless block ~-1.5 ~ ~1.5 #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 12 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~-0.2 ~ ~0.2
execute if score @s enemydummy matches 12 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#13 = move X- and Z-
execute if score @s enemydummy matches 13 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 13 as @e[type=marker,tag=armosknightma] at @s unless block ~-1.5 ~ ~-1.5 #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 13 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~-0.2 ~ ~-0.2
execute if score @s enemydummy matches 13 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#14 = move X+ and Z-
execute if score @s enemydummy matches 14 run scoreboard players set gogo dummy 0
execute if score @s enemydummy matches 14 as @e[type=marker,tag=armosknightma] at @s unless block ~1.5 ~ ~-1.5 #gothrough run scoreboard players set gogo dummy 1
execute if score @s enemydummy matches 14 if score gogo dummy matches 0 as @e[type=marker,tag=armosknightma] at @s run tp @s ~0.2 ~ ~-0.2
execute if score @s enemydummy matches 14 if score gogo dummy matches 1 run scoreboard players set @s enemydummy2 999

#15 = pound attack
execute if score @s enemydummy matches 15 rotated 0 0 run tp @e[type=marker,tag=armosknightma,tag=ak1] ^ ^ ^8
execute if score @s enemydummy matches 15 rotated 60 0 run tp @e[type=marker,tag=armosknightma,tag=ak2] ^ ^ ^8
execute if score @s enemydummy matches 15 rotated 120 0 run tp @e[type=marker,tag=armosknightma,tag=ak3] ^ ^ ^8
execute if score @s enemydummy matches 15 rotated 180 0 run tp @e[type=marker,tag=armosknightma,tag=ak4] ^ ^ ^8
execute if score @s enemydummy matches 15 rotated -60 0 run tp @e[type=marker,tag=armosknightma,tag=ak5] ^ ^ ^8
execute if score @s enemydummy matches 15 rotated -120 0 run tp @e[type=marker,tag=armosknightma,tag=ak6] ^ ^ ^8
execute if score @s enemydummy matches 15 if score @s enemydummy2 matches 65 run tag @e[type=marker,tag=armosknightma] add nostomp
execute if score @s enemydummy matches 15 if score @s enemydummy2 matches 100 run tag @e[type=marker,tag=armosknightma] add bigstomp

#Bossbar
execute if score @s enemydummy6 matches 1 run bossbar add armosknight "Armos Knights"
execute if score @s enemydummy6 matches 1 run bossbar set armosknight max 210
execute if score @s enemydummy6 matches 1 run bossbar set armosknight color blue
execute if score @s enemydummy6 matches 1 run bossbar set armosknight visible true
execute if score @s enemydummy6 matches 1 run bossbar set armosknight players @a
execute unless score @s enemydummy6 matches 2 run scoreboard players add @s enemydummy6 1
execute store result score @s enemydummy10 run data get entity @e[type=slime,tag=armosknightzo,tag=ak1,limit=1] Health
execute store result score @s enemydummy11 run data get entity @e[type=slime,tag=armosknightzo,tag=ak2,limit=1] Health
execute store result score @s enemydummy12 run data get entity @e[type=slime,tag=armosknightzo,tag=ak3,limit=1] Health
execute store result score @s enemydummy13 run data get entity @e[type=slime,tag=armosknightzo,tag=ak4,limit=1] Health
execute store result score @s enemydummy14 run data get entity @e[type=slime,tag=armosknightzo,tag=ak5,limit=1] Health
execute store result score @s enemydummy15 run data get entity @e[type=slime,tag=armosknightzo,tag=ak6,limit=1] Health

scoreboard players operation @s enemydummy10 += @s enemydummy11
scoreboard players operation @s enemydummy10 += @s enemydummy12
scoreboard players operation @s enemydummy10 += @s enemydummy13
scoreboard players operation @s enemydummy10 += @s enemydummy14
scoreboard players operation @s enemydummy10 += @s enemydummy15

execute store result bossbar armosknight value run scoreboard players get @s enemydummy10

#If only 1 knight left
scoreboard players set akcount dummy 0
execute as @e[type=marker,tag=armosknightma] run scoreboard players add akcount dummy 1
execute if score akcount dummy matches 1 run tag @e[type=marker,tag=armosknightma] add final
execute if score akcount dummy matches 1 run tp @e[type=marker,tag=armosknightma] @p