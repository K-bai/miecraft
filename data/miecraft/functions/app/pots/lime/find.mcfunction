# 计算能量
function miecraft:sheep_energy/item_to_score

# 判断是否是作物
scoreboard players set @s mie_temp1 0
execute if block ~ ~ ~ minecraft:potatoes unless block ~ ~ ~ minecraft:potatoes[age=7] run scoreboard players set @s mie_temp1 1
execute if block ~ ~ ~ minecraft:carrots unless block ~ ~ ~ minecraft:carrots[age=7] run scoreboard players set @s mie_temp1 2
execute if block ~ ~ ~ minecraft:wheat unless block ~ ~ ~ minecraft:wheat[age=7] run scoreboard players set @s mie_temp1 3
execute if block ~ ~ ~ minecraft:beetroots unless block ~ ~ ~ minecraft:beetroots[age=3] run scoreboard players set @s mie_temp1 4
execute if block ~ ~ ~ minecraft:pumpkin_stem unless block ~ ~ ~ minecraft:pumpkin_stem[age=7] run scoreboard players set @s mie_temp1 5
execute if block ~ ~ ~ minecraft:melon_stem unless block ~ ~ ~ minecraft:melon_stem[age=7] run scoreboard players set @s mie_temp1 6
execute if block ~ ~ ~ minecraft:nether_wart unless block ~ ~ ~ minecraft:nether_wart[age=3] run scoreboard players set @s mie_temp1 7

execute if block ~ ~ ~ minecraft:sugar_cane unless block ~ ~-1 ~ minecraft:sugar_cane if block ~ ~1 ~ minecraft:air run scoreboard players set @s mie_temp1 10
execute if block ~ ~ ~ minecraft:sugar_cane if block ~ ~-1 ~ minecraft:sugar_cane unless block ~ ~-2 ~ minecraft:sugar_cane if block ~ ~1 ~ minecraft:air run scoreboard players set @s mie_temp1 10
execute if block ~ ~ ~ minecraft:sugar_cane unless block ~ ~-1 ~ minecraft:sugar_cane if block ~ ~1 ~ minecraft:sugar_cane if block ~ ~2 ~ minecraft:air run scoreboard players set @s mie_temp1 11

execute if block ~ ~ ~ minecraft:cactus unless block ~ ~-1 ~ minecraft:cactus if block ~1 ~1 ~1 minecraft:air if block ~1 ~1 ~ minecraft:air if block ~1 ~1 ~-1 minecraft:air if block ~-1 ~1 ~1 minecraft:air if block ~-1 ~1 ~ minecraft:air if block ~-1 ~1 ~-1 minecraft:air if block ~ ~1 ~1 minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~1 ~-1 minecraft:air run scoreboard players set @s mie_temp1 20
execute if block ~ ~ ~ minecraft:cactus if block ~ ~-1 ~ minecraft:cactus unless block ~ ~-2 ~ minecraft:cactus if block ~1 ~1 ~1 minecraft:air if block ~1 ~1 ~ minecraft:air if block ~1 ~1 ~-1 minecraft:air if block ~-1 ~1 ~1 minecraft:air if block ~-1 ~1 ~ minecraft:air if block ~-1 ~1 ~-1 minecraft:air if block ~ ~1 ~1 minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~1 ~-1 minecraft:air run scoreboard players set @s mie_temp1 20
execute if block ~ ~ ~ minecraft:cactus unless block ~ ~-1 ~ minecraft:cactus if block ~ ~1 ~ minecraft:cactus if block ~ ~2 ~1 minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~2 ~-1 minecraft:air if block ~1 ~2 ~1 minecraft:air if block ~1 ~2 ~ minecraft:air if block ~1 ~2 ~-1 minecraft:air if block ~-1 ~2 ~1 minecraft:air if block ~-1 ~2 ~ minecraft:air if block ~-1 ~2 ~-1 minecraft:air run scoreboard players set @s mie_temp1 21

execute if block ~ ~ ~ minecraft:pumpkin_stem[age=7] if block ~ ~ ~1 minecraft:air if block ~ ~-1 ~1 #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 30
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=7] if block ~ ~ ~-1 minecraft:air if block ~ ~-1 ~-1 #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 31
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=7] if block ~1 ~ ~ minecraft:air if block ~1 ~-1 ~ #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 32
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=7] if block ~-1 ~ ~ minecraft:air if block ~-1 ~-1 ~ #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 33

execute if block ~ ~ ~ minecraft:melon_stem[age=7] if block ~ ~ ~1 minecraft:air if block ~ ~-1 ~1 #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 40
execute if block ~ ~ ~ minecraft:melon_stem[age=7] if block ~ ~ ~-1 minecraft:air if block ~ ~-1 ~-1 #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 41
execute if block ~ ~ ~ minecraft:melon_stem[age=7] if block ~1 ~ ~ minecraft:air if block ~1 ~-1 ~ #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 42
execute if block ~ ~ ~ minecraft:melon_stem[age=7] if block ~-1 ~ ~ minecraft:air if block ~-1 ~-1 ~ #miecraft:melon_can_grow run scoreboard players set @s mie_temp1 43

execute if block ~ ~ ~ minecraft:cocoa[facing=east] unless block ~ ~ ~ minecraft:cocoa[age=2] run scoreboard players set @s mie_temp1 50
execute if block ~ ~ ~ minecraft:cocoa[facing=west] unless block ~ ~ ~ minecraft:cocoa[age=2] run scoreboard players set @s mie_temp1 51
execute if block ~ ~ ~ minecraft:cocoa[facing=south] unless block ~ ~ ~ minecraft:cocoa[age=2] run scoreboard players set @s mie_temp1 52
execute if block ~ ~ ~ minecraft:cocoa[facing=north] unless block ~ ~ ~ minecraft:cocoa[age=2] run scoreboard players set @s mie_temp1 53


# 更改方块
execute if score @s mie_temp1 matches 1.. if score @s mie_eg_lime matches 2.. run function miecraft:app/pots/lime/grow
# 效果
execute if score @s mie_temp1 matches 1.. if score @s mie_eg_lime matches 2.. align xyz run particle minecraft:happy_villager ~.5 ~.5 ~.5 .3 .3 .3 1 25


# 消耗能量
execute if score @s mie_temp1 matches 1.. run function miecraft:sheep_energy/reset_score
execute if score @s mie_temp1 matches 1.. run scoreboard players set @s mie_eg_lime 2
execute if score @s mie_temp1 matches 1.. run function miecraft:sheep_energy/score_to_item/remove