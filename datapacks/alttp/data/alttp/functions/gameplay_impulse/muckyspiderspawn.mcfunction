##Mucky spiders
tp @e[type=spider,tag=muckyspider] 0 -64 0
tag @e[type=spider,tag=muckyspider] add kill
schedule function alttp:gameplay_impulse/muckyspiderkill 30t
execute positioned -255 -6 733 run function alttp:summon/mucky_spider
execute positioned -249 -6 722 run function alttp:summon/mucky_spider
execute positioned -246 -2 734 run function alttp:summon/mucky_spider
execute positioned -326 -1 715 run function alttp:summon/mucky_spider
execute positioned -317 -1 716 run function alttp:summon/mucky_spider
execute positioned -339 4 677 run function alttp:summon/mucky_spider
execute positioned -339 4 680 run function alttp:summon/mucky_spider
execute positioned -332 6 645 run function alttp:summon/mucky_spider
execute positioned -330 2 647 run function alttp:summon/mucky_spider
execute positioned -334 2 647 run function alttp:summon/mucky_spider
execute positioned -250 -7 591 run function alttp:summon/mucky_spider
execute positioned -238 -10 624 run function alttp:summon/mucky_spider
execute positioned -272 -12 692 run function alttp:summon/mucky_spider
execute positioned -334 1 691 run function alttp:summon/mucky_spider
execute positioned -316 -2 611 run function alttp:summon/mucky_spider
execute positioned -279 -2 577 run function alttp:summon/mucky_spider
execute positioned -371 1 723 run function alttp:summon/mucky_spider
execute positioned -408 -8 679 run function alttp:summon/mucky_spider
execute positioned -412 -8 680 run function alttp:summon/mucky_spider
execute positioned -381 -7 677 run function alttp:summon/mucky_spider

scoreboard players set muckspiders gameplay 0