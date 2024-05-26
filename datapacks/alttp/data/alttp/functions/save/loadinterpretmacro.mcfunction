execute store result score @p spw_u_1 run data get storage load 1
execute store result score @p spw_u_2 run data get storage load 2
execute store result score @p spw_u_3 run data get storage load 3
execute store result score @p spw_u_4 run data get storage load 4
execute store result score @p spw_u_5 run data get storage load 5
execute store result score @p spw_u_6 run data get storage load 6
execute store result score @p spw_u_7 run data get storage load 7
execute store result score @p spw_u_8 run data get storage load 8
execute store result score @p spw_u_9 run data get storage load 9
execute store result score @p spw_u_10 run data get storage load 10
execute store result score @p spw_u_11 run data get storage load 11
execute store result score @p spw_u_12 run data get storage load 12
execute store result score @p spw_u_13 run data get storage load 13
execute store result score @p spw_u_14 run data get storage load 14
execute store result score @p spw_u_15 run data get storage load 15
execute store result score @p spw_u_16 run data get storage load 16
execute store result score @p spw_u_17 run data get storage load 17
execute store result score @p spw_u_18 run data get storage load 18
execute store result score @p magic run data get storage load 19
execute store result score @p arrows run data get storage load 20
execute store result score @p arrows_fire run data get storage load 21
execute store result score @p arrows_ice run data get storage load 22
execute store result score @p arrows_silver run data get storage load 23
execute store result score @p arrows_bomb run data get storage load 24
execute store result score @p bombs run data get storage load 25
execute store result score @p rupees run data get storage load 26
execute store result score @p magicmax run data get storage load 27
execute store result score @p extrahearts run data get storage load 28
execute store result score @p heartpieces run data get storage load 29
execute store result score @p swordtier run data get storage load 30
execute store result score @p shieldtier run data get storage load 31
execute store result score @p hasbow run data get storage load 32
execute store result score @p spw_1 run data get storage load 33
execute store result score @p spw_2 run data get storage load 34
execute store result score @p spw_3 run data get storage load 35
execute store result score @p bombsmax run data get storage load 36
execute store result score @p arrowsmax run data get storage load 37
execute store result score @p haspegasus run data get storage load 38
execute store result score @p rupeesmax run data get storage load 39
execute store result score @p flippers run data get storage load 40
execute store result score @p armortier run data get storage load 41
execute store result score @p hasmoonpearl run data get storage load 42
execute store result score @p spw_e_1 run data get storage load 43
execute store result score @p boomerangtier run data get storage load 44
execute store result score @p spw_e_3 run data get storage load 45
execute store result score @p spw_e_5 run data get storage load 46
execute store result score @p spw_e_6 run data get storage load 47
execute store result score @p spw_e_7 run data get storage load 48
execute store result score @p spw_e_10 run data get storage load 49
execute store result score @p spw_e_11 run data get storage load 50
execute store result score @p spw_e_12 run data get storage load 51
execute store result score @p spw_e_14 run data get storage load 52
execute store result score @p spw_e_15 run data get storage load 53
execute store result score @p spw_e_16 run data get storage load 54
execute store result score @p spw_e_17 run data get storage load 55
execute store result score @p spw_e_18 run data get storage load 56
execute store result score @p handtier run data get storage load 57

execute store result score @p bottle_1 run data get storage load 58
execute store result score @p bottle_2 run data get storage load 59
execute store result score @p bottle_3 run data get storage load 60
execute store result score @p bottle_4 run data get storage load 61
execute store result score @p pendant_courage run data get storage load 62
execute store result score @p pendant_power run data get storage load 63
execute store result score @p pendant_wisdom run data get storage load 64
execute store result score @p crystal_1 run data get storage load 65
execute store result score @p crystal_2 run data get storage load 66
execute store result score @p crystal_3 run data get storage load 67
execute store result score @p crystal_4 run data get storage load 68
execute store result score @p crystal_5 run data get storage load 69
execute store result score @p crystal_6 run data get storage load 70
execute store result score @p crystal_7 run data get storage load 71
execute store result score @p hasquiver run data get storage load 72
execute store result score @p hasbombbag run data get storage load 73
execute store result score @p hasquestbook run data get storage load 74

#Quests
data remove storage minecraft:quests main[]

execute store result score tempq1 dummy run data get storage load 75
execute store result score tempq2 dummy run data get storage load 78
execute store result score tempq3 dummy run data get storage load 81
execute store result score tempq4 dummy run data get storage load 84
execute store result score tempq5 dummy run data get storage load 87
execute store result score tempq6 dummy run data get storage load 90
execute store result score tempq7 dummy run data get storage load 93

execute if score tempq1 dummy matches 1 run data modify storage minecraft:quests main prepend value {id:1,progress:1,completed:0}
execute if score tempq1 dummy matches 1 store result storage quests main[{id:1}].progress int 1 run data get storage load 76
execute if score tempq1 dummy matches 1 store result storage quests main[{id:1}].completed int 1 run data get storage load 77

execute if score tempq2 dummy matches 1 run data modify storage minecraft:quests main prepend value {id:2,progress:1,completed:0}
execute if score tempq2 dummy matches 1 store result storage quests main[{id:2}].progress int 1 run data get storage load 79
execute if score tempq2 dummy matches 1 store result storage quests main[{id:2}].completed int 1 run data get storage load 80

execute if score tempq3 dummy matches 1 run data modify storage minecraft:quests main prepend value {id:3,progress:1,completed:0}
execute if score tempq3 dummy matches 1 store result storage quests main[{id:3}].progress int 1 run data get storage load 82
execute if score tempq3 dummy matches 1 store result storage quests main[{id:3}].completed int 1 run data get storage load 83

execute if score tempq4 dummy matches 1 run data modify storage minecraft:quests main prepend value {id:4,progress:1,completed:0}
execute if score tempq4 dummy matches 1 store result storage quests main[{id:4}].progress int 1 run data get storage load 85
execute if score tempq4 dummy matches 1 store result storage quests main[{id:4}].completed int 1 run data get storage load 86

execute if score tempq5 dummy matches 1 run data modify storage minecraft:quests main prepend value {id:5,progress:1,completed:0}
execute if score tempq5 dummy matches 1 store result storage quests main[{id:5}].progress int 1 run data get storage load 88
execute if score tempq5 dummy matches 1 store result storage quests main[{id:5}].completed int 1 run data get storage load 89

execute if score tempq6 dummy matches 1 run data modify storage minecraft:quests main prepend value {id:6,progress:1,completed:0}
execute if score tempq6 dummy matches 1 store result storage quests main[{id:6}].progress int 1 run data get storage load 91
execute if score tempq6 dummy matches 1 store result storage quests main[{id:6}].completed int 1 run data get storage load 92

execute if score tempq7 dummy matches 1 run data modify storage minecraft:quests main prepend value {id:7,progress:1,completed:0}
execute if score tempq7 dummy matches 1 store result storage quests main[{id:7}].progress int 1 run data get storage load 94
execute if score tempq7 dummy matches 1 store result storage quests main[{id:7}].completed int 1 run data get storage load 95

tellraw @p "Your save file has been succesfully loaded!"