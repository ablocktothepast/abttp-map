#Pot breaking
execute as @e[type=item,nbt={Item:{id:"minecraft:stone",Count:1b}}] at @s run function alttp:pot_broken

#HOOKSHOT
execute as @e[type=player,tag=hookshotting] at @s run function alttp:hookshotdo
execute as @e[type=marker,tag=hookshotstand,tag=!done] at @s run function alttp:hookshotcheck
execute as @e[type=marker,tag=hookshotstand,tag=done,tag=!yes] as @p at @s if score @s hooklook matches -1 run playsound minecraft:item.elytra.flying weather @a ~ ~ ~ 1 2
execute as @e[type=marker,tag=hookshotstand,tag=done,tag=!yes] as @p at @s run function alttp:hookshotdo

#MUSIC
execute if score song song matches 1.. run function alttp:tick/songtick

#BOOMERANG
execute as @e[type=armor_stand,tag=boomerang] at @s run function alttp:boomerangtick
execute as @e[type=armor_stand,tag=magicalboomerang] at @s run function alttp:magicalboomerangtick

#DARK WORLD BUNNY LINK
execute as @a at @s if score @s bunny matches 1 run function alttp:tick/dark_bunny

#GAME OVER
execute as @a[scores={deaths=1..,mapping=0}] at @s run function alttp:gameover

#STORE HP
execute as @a at @s store result score @s health run data get entity @s Health
execute as @p if score @s health matches ..2 run function alttp:low_hp

#DISABLE LIGHTNING STRIKES DURING BEGINNING THUNDERSTORM
kill @e[type=lightning_bolt]

#BOMB CODE
execute as @e[type=armor_stand,tag=bomb] at @s run function alttp:bombtick

execute as @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b,tag:{display:{Name:'{"text":"Bomb","color":"blue","italic":false}',Lore:['{"text":"Throw to place a bomb.","color":"white","italic":false}']},Enchantments:[{}]}}}] at @s run function alttp:bombitemtick

execute as @p if score @s bombcooldown matches 1.. run scoreboard players remove @s bombcooldown 1

#BUSH LOOT
execute as @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] at @s run function alttp:bushloot

#LOOT COLLECTING
execute as @a at @s if entity @e[type=item,tag=loot,distance=..1] run function alttp:getloot
execute if score . thirdperson matches 1 as @a at @e[type=armor_stand,tag=thirdperson_player] if entity @e[type=item,tag=loot,distance=..1] run function alttp:getloot

#FIRE ROD COOLDOWN
execute as @a at @s if score @s firerodcool matches 1.. run scoreboard players remove @s firerodcool 1
execute as @a at @s if score @s firerodcool matches 0 run scoreboard players set @s spw_c_6 0
execute as @a at @s if score @s firerodcool matches 0 run scoreboard players set @s firerodcool -1

#FIREBALL CODE
execute as @e[type=armor_stand,tag=firerodball] at @s run function alttp:firerodballtick

#INTERACT DETECT
execute as @a if score @s interactsneak matches 1.. run function alttp:interactcheck
execute as @a at @s if score @s interactsneak matches 1 run function alttp:interact

#ICEBALL CODE
execute as @e[type=armor_stand,tag=icerodball] at @s run function alttp:icerodballtick

#FREEZE PEOPLE
execute as @e[tag=icerodfrozen] at @s run function alttp:frozentick

#ICE ROD COOLDOWN
execute as @a at @s if score @s icerodcool matches 1.. run scoreboard players remove @s icerodcool 1
execute as @a at @s if score @s icerodcool matches 0 run scoreboard players set @s spw_c_7 0
execute as @a at @s if score @s icerodcool matches 0 run scoreboard players set @s icerodcool -1

#WHEN QUIT GAME
execute as @a at @s if score @s gamesquit matches 1.. run function alttp:entergame

#DROWNING
# execute as @p at @s if block ~ ~ ~ water run scoreboard players remove @s drowning 2
execute as @p at @s if block ~ ~1.2 ~ water run scoreboard players remove @s drowning 2
execute as @p at @s unless block ~ ~ ~ water unless block ~ ~1.2 ~ water if score @s drowning < @s flippers unless block ~ ~-0.1 ~ #gothrough run scoreboard players add @s drowning 2
execute as @p at @s if score @s drowning > @s flippers store result score @s drowning run scoreboard players get @s flippers
execute as @p at @s if score @s drowning < @s flippers run function alttp:drownbar
execute as @p at @s unless score @s drowning < @s flippers if score drownbar dummy matches 1.. run scoreboard players remove drownbar dummy 1
execute if score drownbar dummy matches ..0 run bossbar set drowning visible false
execute if score @p armortier matches 2 run scoreboard players set @p drowning 99999999

#BOMB PICKUP
execute if score @p bombtick matches 1.. run scoreboard players remove @p bombtick 1
execute as @a at @s if score @s interactsneak matches 1.. positioned ~ ~-1.3 ~ unless score @s bombtick matches 1.. run function alttp:bombpickup
execute as @a at @s if score @s bombtick matches 0 run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Attributes:[{Name:generic.attack_damage,Base:1}]}
execute as @a at @s if score @s bombtick matches 0 run function delta:api/explosion_emitter_particle
execute as @a at @s if score @s bombtick matches 0 run clear @s carrot_on_a_stick{CustomModelData:284,active:1}
execute as @a at @s if score @s bombtick matches 0 run tag @s remove bomb
execute as @a at @s if score @s bombtick matches 0 run scoreboard players set @s bombtick -1

##ENEMY TICK
execute as @e[tag=enemy,tag=enemyCode,tag=!unTick] at @s run function alttp:enemytick

#RIGHT CLICK DETECTION
execute as @a at @s if score @s rightclick matches 1.. run function alttp:rightclicked

#BUSH MINING COOLDOWN
execute as @a at @s if score @s bushminecool matches 1.. run scoreboard players remove @s bushminecool 1

#PINNING ITEMS
execute as @a[name=!"Reevz_"] at @s unless score @s mapping matches 1.. unless score active dialogue matches 1 unless score menu quests matches 1 unless score dialoguetransition dummy matches 1 run function alttp:itempinning

#PEGASUS BOOTS
execute if score . intercool matches 1.. run scoreboard players set @a pegasussneak 0
execute as @a at @s if score @s pegasussneak matches 1.. store result score result rand run random value 1..5
execute as @a at @s if score @s pegasussneak matches 1.. if score result rand matches 1 run scoreboard players remove @s pegasussneak 1
execute as @a at @s if score @s[gamemode=adventure] pegasussneak matches 20.. if score @s haspegasus matches 1 run function alttp:usepegasus
execute as @a at @s if score @s pegasusb matches 1.. run function alttp:pegasustick
execute as @a if score @s peg_sn_c matches 1.. run scoreboard players remove @s peg_sn_c 1
execute as @a at @s if score @s pegasusb matches 1 if score @s sneaking matches 1.. if score @s peg_sn_c matches 0 run function alttp:stoppegasus

#BOMBOS TICK
execute unless score . thirdperson matches 1 as @a at @s if score @s bombostick matches 0.. run function alttp:bombostick
execute if score . thirdperson matches 1 as @a at @e[type=armor_stand,tag=thirdperson_player] if score @s bombostick matches 0.. run function alttp:bombostick

#QUAKE TICK
execute unless score . thirdperson matches 1 as @a at @s if score @s quaketick matches 0.. run function alttp:quaketick
execute if score . thirdperson matches 1 as @e[type=armor_stand,tag=thirdperson_player] at @s if score @p quaketick matches 0.. run function alttp:quaketick

#ETHER TICK
execute unless score . thirdperson matches 1 as @a at @s if score @s ethertick matches 0.. run function alttp:ethertick
execute if score . thirdperson matches 1 as @a at @e[type=armor_stand,tag=thirdperson_player] if score @s ethertick matches 0.. run function alttp:ethertick

#DUMMY
execute as @e[type=armor_stand,tag=dummy] at @s run function alttp:dummytick

execute as @e[type=text_display,tag=damage_ind] at @s if score @s dummy matches 1..5 run tp @s ~ ~0.2 ~
execute as @e[type=text_display,tag=damage_ind] at @s if score @s dummy matches 6..8 run tp @s ~ ~0.15 ~
execute as @e[type=text_display,tag=damage_ind] at @s if score @s dummy matches 9..12 run tp @s ~ ~0.1 ~
execute as @e[type=text_display,tag=damage_ind] at @s if score @s dummy matches 13..16 run tp @s ~ ~0.05 ~
execute as @e[type=text_display,tag=damage_ind] at @s if score @s dummy matches 17..20 run tp @s ~ ~0.025 ~
execute as @e[type=text_display,tag=damage_ind] run scoreboard players add @s dummy 1
execute as @e[type=text_display,tag=damage_ind] if score @s dummy matches 20.. run kill @s

#WALL EXPLODING
execute if entity @e[type=armor_stand,tag=bomb] run function alttp:wall_exploding

#FAIRY
execute as @a at @s if entity @e[type=item_display,tag=fairy,distance=..1] run function alttp:fairy_collect
execute as @a at @s positioned ~ ~1 ~ if entity @e[type=item_display,tag=fairy,distance=..1] run function alttp:fairy_collect
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Fairy Bottle","color":"dark_gray","italic":false}',Lore:['{"text":"Right-click to release it!","color":"white","italic":false}']},CustomModelData:48}}]}] run function alttp:fairydeath_t

#WEEDS
execute as @a at @s if score @s weedmined matches 1.. run function alttp:minedweed

#SWORD BEAM
execute as @e[type=armor_stand,tag=swordbeam] at @s positioned ~ ~0.5 ~ run function alttp:swordbeamtick

execute as @e[type=armor_stand,tag=superbomb] at @s run function alttp:superbombtick

#DIFFERENTIATE ARROWS
execute as @e[type=arrow,tag=!differ] at @s if entity @p[distance=..2] run tag @s add playerarrow
execute as @e[type=arrow,tag=!differ] run tag @s add differ

execute as @e[type=falling_block,tag=hbush] at @s unless entity @e[type=armor_stand,tag=hoarder,distance=..0.2] run kill @s
execute as @e[type=falling_block,tag=hstone] at @s unless entity @e[type=armor_stand,tag=hoarder,distance=..0.2] run kill @s

#MAGIC CAPE
execute as @a at @s if score @s mcaped matches 1.. run function alttp:mcape
execute as @a at @s if score @s mcaped matches 1.. run scoreboard players remove @s mcaped 1
execute as @a at @s if score @s mcaped matches 20 run playsound alttp.low_hp weather @s ~ ~ ~ 1 1
execute as @a at @s if score @s mcaped matches 0 run function alttp:mcape_stop

#SOMARIA BLOCK
execute as @e[type=marker,tag=somariablock] at @s run function alttp:somariab_tick

#BYRNA
execute as @a at @s if score @s byrnaing matches 1 if score @s byrnatimer matches 0 run function alttp:byrnatimed
execute as @a at @s if score @s byrnaing matches 1 if score @s byrnatimer matches 1.. run function alttp:byrnatick

#TESTER STUFF
scoreboard objectives add testerdetect dummy
execute as @a at @s unless score @s testerdetect matches -2147483648..2147483647 run function alttp:testerstuff

#PROJECTILE CODE FOR ENEMIES
function alttp:enemyprojectiletick

#DUNGEON STATISTICS SIDEBAR (key=, master key=)
#0=not in dungeon, 1=test dungeon
#execute if score .global dungeon_loc matches 0 run scoreboard objectives setdisplay sidebar
execute if score .global dungeon_loc matches 1 run scoreboard objectives setdisplay sidebar dungeon_1

#MAP
execute as @a at @s if score @s mapping matches 3 run function alttp:maptick
execute as @a at @s if score @s mapping matches 2 run setblock ~ ~1.5 ~ air
execute as @a at @s if score @s mapping matches 2 run scoreboard players set @s mapping 3
execute as @a at @s if score @s mapping matches 1 run setblock ~ ~1.5 ~ nether_portal
execute as @a at @s if score @s mapping matches 1 run scoreboard players set @s mapping 2

execute as @e[type=armor_stand,tag=oldpostp] at @s run scoreboard players add @s enemydummy 1
execute as @e[type=armor_stand,tag=oldpostp] at @s if score @s enemydummy matches 4.. run function alttp:oldpostp

#TREASURE CHESTS
execute as @p at @s as @e[type=interaction,tag=chestm,distance=..8] at @s unless entity @s[tag=opened] run function alttp:chestm_tick

execute as @e[type=armor_stand,tag=chestitem] run scoreboard players add @s enemydummy 1
execute as @e[type=armor_stand,tag=chestitem] at @s if score @s enemydummy matches ..35 run tp @s ~ ~0.02 ~
execute as @e[type=armor_stand,tag=chestitem] at @s if score @s enemydummy matches 70.. run tp @s ~ ~-0.2 ~
execute as @e[type=armor_stand,tag=chestitem] at @s rotated as @e[type=item_display,tag=chestd,limit=1,sort=nearest] run tp @s ~ ~ ~ ~180 ~
execute as @e[type=armor_stand,tag=chestitem,tag=boomerangy] if score @s enemydummy matches 10.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:33}}]}
execute as @e[type=armor_stand,tag=chestitem] if score @s enemydummy matches 80.. run kill @s

#BABUSE HOLE LINKS
execute as @e[type=marker,tag=babusuhole] unless score @s babusulink matches 0.. store result score @s babusulink run data get entity @s Health
execute as @e[type=marker,tag=babusuhole] at @s run particle angry_villager ~ ~ ~ 0 0 0 0 1

#FLYING TILE TIMER TICK
execute as @p at @s if entity @e[tag=flying_tile,distance=..8] run function alttp:flyingtiletick

#MOVING BLOCK PUSH
execute as @e[type=armor_stand,tag=moveblock] at @s run function alttp:moveblocktick

#LAMP AMBIENT LIGHTING
execute as @e[type=marker,tag=lamplight] at @s run function alttp:lampambientlighting

#CUSTOM DAMAGE AMOUNTS
execute as @a unless entity @s[scores={set_damage=0}] run function alttp:set_damage

#DIALOGUE SYSTEM
execute if score active dialogue matches 1 run function alttp:dialoguetick
execute if score active dialogue matches 0 run function alttp:dialogue_untick

#ITEM AND MAP INTERACTION COOLDOWN SYSTEM
execute if score . intercool matches 1.. run scoreboard players remove . intercool 1

#SUPER BOMB FOLLOW
execute as @e[type=armor_stand,tag=superbombfollow] at @s run function alttp:superbombfollow

#FLOATING ERROR TEXT
execute as @e[type=text_display,tag=errortext] run scoreboard players add @s dummy 1
execute as @e[type=text_display,tag=errortext] at @s if score @s dummy matches ..5 run tp @s ~ ~0.2 ~
execute as @e[type=text_display,tag=errortext] at @s if score @s dummy matches 30.. run tp @s ~ ~-0.2 ~
execute as @e[type=text_display,tag=errortext] if score @s dummy matches 35.. run kill @s

#LIGHTSTRUCK
execute as @p at @s if score @s lightstruck matches 1.. run function alttp:lightstrike

#Lanmolas multiple bossbar
execute if entity @e[type=armor_stand,tag=lanmolas] run function alttp:lanmolasbossbar

#Lanmolas rocks
execute as @e[type=armor_stand,tag=lanmolasrock] at @s run function alttp:lanmolasrocktick

#Lanmolas shake
execute as @p[tag=lanmolasshake] at @s run function alttp:lanmolasshaketick

#Tornado flung
execute as @p[tag=tornadoflung] at @s run function alttp:tornadoflungtick

#Protect zombies from sunlight
execute as @e[type=zombie,tag=enemy,tag=!protecc] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:wither_rose",Count:1b}]}
tag @e[type=zombie,tag=enemy,tag=!protecc] add protecc

#Throwing and holding
execute as @p at @s if score @s holding_bool matches 1 run function alttp:pick/tick
execute as @e[type=armor_stand,tag=thrown] at @s run function alttp:pick/throwtick
execute as @e[type=chicken,tag=thrown] at @s run function alttp:pick/throwtick

#Knockback markers
execute as @e[type=marker,tag=knocky] at @s run function alttp:knockbackmarker

#Quests
execute if score menu quests matches 1 run function alttp:questm_tick

#Cutscene
execute if score tick cutscene matches -10.. if score active cutscene matches 1 run function alttp:cutscenetick

#Door opening
execute if score . dungeondoor matches -5.. run function alttp:dungeon/open_door_cutscene

##Hookshotted enemies
execute as @e[tag=hookshotable,tag=enemy,tag=hookshotted] at @s run function alttp:hookshotted

##Player model test
execute as @e[type=item_display,tag=left_arm] at @e[type=item_display,tag=torso] run tp @s ^0.4375 ^ ^-0.125 ~90 ~
execute as @e[type=item_display,tag=right_arm] at @e[type=item_display,tag=torso] run tp @s ^-0.4375 ^ ^0.125 ~-90 ~

execute as @e[type=item_display,tag=right_arm] at @s run function alttp:playermodel/armtick
execute as @e[type=item_display,tag=left_arm] at @s run function alttp:playermodel/armtick
#/summon item_display ~ ~ ~ {Tags:["left_arm"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:281}}}
#/summon item_display ~ ~ ~ {Tags:["right_arm"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:281}}}
#/summon item_display ~ ~ ~ {Tags:["torso"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:282}}}

##Custom Third-Person
execute if score . thirdperson matches 1 run function alttp:thirdperson/tick

##Lamp tick
execute if score @p lamp_state matches 1 run function alttp:lamptick

##Dialogue transition
execute if score dialoguetransition dummy matches 1 run function alttp:dialogue_transition
execute if score dialoguetransition2 dummy matches 1 run function alttp:dialogue_transition2

##GAMEPLAY
execute if score . gameplay matches 1 run function alttp:tick_gameplay

##Shop items
execute as @e[type=item_display,tag=shop_item,tag=animate] at @s run function alttp:shop_item_animation_tick

##Disable interaction
attribute @p[gamemode=adventure,tag=!muck_cobweb] minecraft:player.block_interaction_range base set 0
attribute @p[gamemode=adventure,tag=muck_cobweb] minecraft:player.block_interaction_range base set 4.5
attribute @p[gamemode=!adventure] minecraft:player.block_interaction_range base set 4.5

##Interior/exterior
execute as @p[tag=!interior] at @s if entity @e[type=marker,tag=intextmarker,tag=int,distance=..0.5] run function alttp:go_interior
execute as @p[tag=!exterior] at @s if entity @e[type=marker,tag=intextmarker,tag=ext,distance=..0.5] run function alttp:go_exterior

##Muck raycasting
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 if entity @p[nbt={SelectedItemSlot:0}] as @p at @s anchored eyes run scoreboard players set muckraycast dummy 0
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 if entity @p[nbt={SelectedItemSlot:0}] run tag @p remove muck_cobweb
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 if entity @p[nbt={SelectedItemSlot:0}] as @p at @s anchored eyes run function alttp:muckraycast

#FOV init menu
execute if score fov_init dummy matches 1.. run function alttp:fov_init

##Dynamic NPCs
execute as @e[type=item_display,tag=npc,tag=dynamic] at @s run function alttp:npc_dynamic

##Permaloot
execute at @p as @e[type=item_display,tag=permaloot,distance=..16] at @s run function alttp:permaloottick

#OTHER
execute as @a at @s if score @s swordtier matches 2.. run function alttp:swordbeamthrowcheck
execute as @e[type=marker,tag=yomomedusatracker] at @s unless entity @e[type=armor_stand,tag=yomomedusa,distance=..5] run kill @s
execute as @e[type=item_display,tag=chestd,tag=opened] at @s unless block ~ ~ ~ barrier run kill @s
tp @e[type=slime,tag=!enemy] 0 -64 0
effect give @p[scores={nvision=1}] night_vision 5 255 true
execute as @e[tag=enemy,scores={force_damage=1..}] run function alttp:force_damage_apply
execute as @p if score @s holding_cool matches 1.. run scoreboard players remove @s holding_cool 1
execute as @a if score @s e_hit matches 1.. run scoreboard players set @s e_hit 0
kill @e[type=eye_of_ender]
execute if score shieldblock dummy matches 1.. run scoreboard players remove shieldblock dummy 1
execute as @e[type=arrow,tag=arrow_fire] at @s run particle small_flame ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute as @e[type=arrow,tag=arrow_bomb] at @s run function alttp:bombarrowtick
execute as @e[type=arrow,tag=arrow_ice] at @s run particle snowflake ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute as @e[type=arrow,tag=arrow_ice] at @s run tag @e[tag=enemy,distance=..2] add icerodfrozen
execute as @e[type=arrow,tag=arrow_ice] at @s run scoreboard players set @e[tag=enemy,distance=..2] frozentimer 100
execute as @e[type=marker,tag=bombarrowmarker] run scoreboard players add @s dummy 1
execute as @e[type=marker,tag=bombarrowmarker] at @s if score @s dummy matches 2.. run function alttp:bombarrowboom