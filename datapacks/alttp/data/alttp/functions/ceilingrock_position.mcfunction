execute if score GLOBAL fallrockid matches 1 run tp @s 6947 117 6951
execute if score GLOBAL fallrockid matches 2 run tp @s 6959 117 6943
execute if score GLOBAL fallrockid matches 3 run tp @s 6967 117 6951
execute if score GLOBAL fallrockid matches 4 run tp @s 6970 117 6961
execute if score GLOBAL fallrockid matches 5 run tp @s 6980 117 6965
execute if score GLOBAL fallrockid matches 6 run tp @s 6984 117 6956
execute if score GLOBAL fallrockid matches 7 run tp @s 6963 117 6963
execute if score GLOBAL fallrockid matches 8 run tp @s 6951 117 6960
execute if score GLOBAL fallrockid matches 9 run tp @s 6966 117 6954
execute if score GLOBAL fallrockid matches 10 run tp @s 6960 117 6945
execute if score GLOBAL fallrockid matches 11 run tp @s 6968 117 6967
execute if score GLOBAL fallrockid matches 12 run tp @s 6977 117 6955
execute if score GLOBAL fallrockid matches 13 run tp @s 6967 117 6950
execute if score GLOBAL fallrockid matches 14 run tp @s 6968 117 6939
execute if score GLOBAL fallrockid matches 15 run tp @s 6976 117 6938
execute if score GLOBAL fallrockid matches 16 run tp @s 6957 117 6971
execute if score GLOBAL fallrockid matches 17 run tp @s 6958 117 6960
execute if score GLOBAL fallrockid matches 18 run tp @s 6965 117 6937
execute if score GLOBAL fallrockid matches 19 run tp @s 6972 117 6975
execute if score GLOBAL fallrockid matches 20 run tp @s 6980 117 6969
execute if score GLOBAL fallrockid matches 21 run tp @s 6968 117 6959
execute if score GLOBAL fallrockid matches 22 run tp @s 6952 117 6972
execute if score GLOBAL fallrockid matches 23 run tp @s 6949 117 6948
execute if score GLOBAL fallrockid matches 24 run tp @s 6974 117 6943

execute if score GLOBAL fallrockid matches 25.. positioned as @p run tp @s ~ 117 ~

execute store result score result rand run random value 1..3
scoreboard players operation GLOBAL fallrockid += result rand
execute if score GLOBAL fallrockid matches 27.. run scoreboard players set GLOBAL fallrockid 1