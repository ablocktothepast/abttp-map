#CHECK FOR EMPTY LOCATIONS AND DROP ACCORDING LOOT
#LOOT TYPE 1 = MAGIC
#template: execute if block  air run summon item ~ ~ ~ {Age:5800,PickupDelay:32767,Tags:["magicdrop","bushloot"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}
execute if block 195 -34 29 air run summon item 195 -34 29 {Age:5800,PickupDelay:32767,Tags:["magicdrop","bushloot"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}
execute if block 194 -34 29 air run summon item 194 -34 29 {Age:5800,PickupDelay:32767,Tags:["magicdrop","bushloot"],Item:{id:"minecraft:lapis_lazuli",Count:1b}}

#LOOT TYPE 2 = HEART
#template: execute if block  air run summon item ~ ~ ~ {Age:5800,PickupDelay:32767,Tags:["heartdrop","bushloot"],Item:{id:"minecraft:cooked_beef",Count:1b}}
execute if block 1 -24 0 air run summon item 1 -24 0 {Age:5800,PickupDelay:32767,Tags:["heartdrop","bushloot"],Item:{id:"minecraft:cooked_beef",Count:1b}}
execute if block 0 -24 0 air run summon item 0 -24 0 {Age:5800,PickupDelay:32767,Tags:["heartdrop","bushloot"],Item:{id:"minecraft:cooked_beef",Count:1b}}
execute if block -1 -24 0 air run summon item -1 -24 0 {Age:5800,PickupDelay:32767,Tags:["heartdrop","bushloot"],Item:{id:"minecraft:cooked_beef",Count:1b}}

#REPLACE AIR WITH LIGHT AT POT LOCATIONS
#template: fill   light replace air
#add the coordinate twice
fill 195 -34 29 195 -34 29 light[level=0] replace air
fill 194 -34 29 194 -34 29 light[level=0] replace air
fill 1 -24 0 1 -24 0 light[level=0] replace air
fill 0 -24 0 0 -24 0 light[level=0] replace air
fill -1 -24 0 -1 -24 0 light[level=0] replace air