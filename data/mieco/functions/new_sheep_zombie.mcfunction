summon minecraft:husk ~ ~ ~ {Tags:["mie_eco_sheep_zombie","mie_eco_sheep_zombie_new"],DeathLootTable:"mieco:sheep_zombie",ArmorDropChances:[0f,0f,0f,0f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:15758867}}},{},{},{id:"player_head",Count:1,tag:{SkullOwner:"MHF_Sheep"}}]}

execute if entity @s[nbt={Color:0b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 16777215
execute if entity @s[nbt={Color:1b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 15758867
execute if entity @s[nbt={Color:2b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 12403891
execute if entity @s[nbt={Color:3b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 3846105
execute if entity @s[nbt={Color:4b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 16303655
execute if entity @s[nbt={Color:5b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 7387417
execute if entity @s[nbt={Color:6b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 15568300
execute if entity @s[nbt={Color:7b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 4080711
execute if entity @s[nbt={Color:8b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 9342598
execute if entity @s[nbt={Color:9b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 1411473
execute if entity @s[nbt={Color:10b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 7940780
execute if entity @s[nbt={Color:11b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 3488157
execute if entity @s[nbt={Color:12b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 7489320
execute if entity @s[nbt={Color:13b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 5532955
execute if entity @s[nbt={Color:14b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 10561314
execute if entity @s[nbt={Color:15b}] run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] ArmorItems[0].tag.display.color set value 1316121

execute if entity @s[nbt={Color:0b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_white
execute if entity @s[nbt={Color:1b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_orange
execute if entity @s[nbt={Color:2b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_magenta
execute if entity @s[nbt={Color:3b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_light_blue
execute if entity @s[nbt={Color:4b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_yellow
execute if entity @s[nbt={Color:5b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_lime
execute if entity @s[nbt={Color:6b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_pink
execute if entity @s[nbt={Color:7b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_gray
execute if entity @s[nbt={Color:8b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_light_gray
execute if entity @s[nbt={Color:9b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_cyan
execute if entity @s[nbt={Color:10b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_purple
execute if entity @s[nbt={Color:11b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_blue
execute if entity @s[nbt={Color:12b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_brown
execute if entity @s[nbt={Color:13b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_green
execute if entity @s[nbt={Color:14b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_red
execute if entity @s[nbt={Color:15b}] run tag @e[tag=mie_eco_sheep_zombie_new] add mie_eco_sheep_zombie_black

execute store result score @s mie_temp1 run data get entity @s Age 
execute if score @s mie_temp1 matches ..-1 run data modify entity @e[tag=mie_eco_sheep_zombie_new,limit=1] IsBaby set value 1

particle minecraft:cloud ~ ~.3 ~ .4 .3 .4 .01 50
tag @e[tag=mie_eco_sheep_zombie_new] remove mie_eco_sheep_zombie_new


