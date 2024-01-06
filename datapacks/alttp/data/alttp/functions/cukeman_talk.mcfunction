execute store result score result rand run random value 1..10

execute if entity @p[nbt={SelectedItem:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{display:{Name:'{"text":"Moon Pearl","color":"gray","italic":false}',Lore:['{"text":"Keep your form in the Dark World.","color":"white","italic":false}']}}}}] run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"It can't be! Is that... A SPHERE?!"]
execute if entity @p[nbt={SelectedItem:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{display:{Name:'{"text":"Moon Pearl","color":"gray","italic":false}',Lore:['{"text":"Keep your form in the Dark World.","color":"white","italic":false}']}}}}] run tag @e[type=armor_stand,tag=cukeman,limit=1,sort=nearest] add saw_sphere

execute if entity @e[type=armor_stand,tag=saw_sphere,distance=..5] run scoreboard players set result rand 0

execute if score result rand matches 1 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"There are 5 dungeons in the Light World."]
execute if score result rand matches 2 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"There are 9 dungeons in the Dark World."]
execute if score result rand matches 3 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"Some of the paintings in Kakariko village have secrets."]
execute if score result rand matches 4 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"Chain chomps are not what you think they are."]
execute if score result rand matches 5 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"Chris Houlihan is always watching you."]
execute if score result rand matches 6 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"Have you ever wondered why everything is made out of cubes?"]
execute if score result rand matches 7 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"I heard there's a rare artifact called a... sphere... somewhere in this world, could you show it to me?"]
execute if score result rand matches 8 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"I heard that if you summon 4 billion enemies, the fabric of reality will shatter!"]
execute if score result rand matches 9 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"I heard that this story has already happened a very long time ago..."]
execute if score result rand matches 10 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"Ever wonder why the Helmasaur's masks are stronger than that of their king?"]

scoreboard players set result rand 0

execute if entity @e[type=armor_stand,tag=saw_sphere,distance=..5] store result score result rand run random value 1..4

execute if score result rand matches 1 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"I can't believe it..."]
execute if score result rand matches 2 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"I SAW A SPHERE!"]
execute if score result rand matches 3 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"I FINALLY SAW A SPHERE!"]
execute if score result rand matches 4 run tellraw @p ["",{"text":"[Cukeman] ","color":"#785C21"},"Have you seen the legendary sphere? Because I have!"]

#RESET PEGASUS COUNTER
scoreboard players set @p pegasussneak 0