execute if score @s mie_temp1 matches 1 run setblock ~ ~ ~ potatoes[age=7]
execute if score @s mie_temp1 matches 2 run setblock ~ ~ ~ carrots[age=7]
execute if score @s mie_temp1 matches 3 run setblock ~ ~ ~ wheat[age=7]
execute if score @s mie_temp1 matches 4 run setblock ~ ~ ~ beetroots[age=3]
execute if score @s mie_temp1 matches 5 run setblock ~ ~ ~ pumpkin_stem[age=7]
execute if score @s mie_temp1 matches 6 run setblock ~ ~ ~ melon_stem[age=7]
execute if score @s mie_temp1 matches 7 run setblock ~ ~ ~ nether_wart[age=3]

execute if score @s mie_temp1 matches 10 run setblock ~ ~1 ~ sugar_cane
execute if score @s mie_temp1 matches 11 run setblock ~ ~2 ~ sugar_cane
execute if score @s mie_temp1 matches 20 run setblock ~ ~1 ~ cactus
execute if score @s mie_temp1 matches 21 run setblock ~ ~2 ~ cactus

execute if score @s mie_temp1 matches 30 run setblock ~ ~ ~ attached_pumpkin_stem[facing=south]
execute if score @s mie_temp1 matches 30 run setblock ~ ~ ~1 pumpkin
execute if score @s mie_temp1 matches 31 run setblock ~ ~ ~ attached_pumpkin_stem[facing=north]
execute if score @s mie_temp1 matches 31 run setblock ~ ~ ~-1 pumpkin
execute if score @s mie_temp1 matches 32 run setblock ~ ~ ~ attached_pumpkin_stem[facing=east]
execute if score @s mie_temp1 matches 32 run setblock ~1 ~ ~ pumpkin
execute if score @s mie_temp1 matches 33 run setblock ~ ~ ~ attached_pumpkin_stem[facing=west]
execute if score @s mie_temp1 matches 33 run setblock ~-1 ~ ~ pumpkin

execute if score @s mie_temp1 matches 40 run setblock ~ ~ ~ attached_melon_stem[facing=south]
execute if score @s mie_temp1 matches 40 run setblock ~ ~ ~1 melon
execute if score @s mie_temp1 matches 41 run setblock ~ ~ ~ attached_melon_stem[facing=north]
execute if score @s mie_temp1 matches 41 run setblock ~ ~ ~-1 melon
execute if score @s mie_temp1 matches 42 run setblock ~ ~ ~ attached_melon_stem[facing=east]
execute if score @s mie_temp1 matches 42 run setblock ~1 ~ ~ melon
execute if score @s mie_temp1 matches 43 run setblock ~ ~ ~ attached_melon_stem[facing=west]
execute if score @s mie_temp1 matches 43 run setblock ~-1 ~ ~ melon

execute if score @s mie_temp1 matches 50 run setblock ~ ~ ~ cocoa[facing=east,age=2]
execute if score @s mie_temp1 matches 51 run setblock ~ ~ ~ cocoa[facing=west,age=2]
execute if score @s mie_temp1 matches 52 run setblock ~ ~ ~ cocoa[facing=south,age=2]
execute if score @s mie_temp1 matches 53 run setblock ~ ~ ~ cocoa[facing=north,age=2]
