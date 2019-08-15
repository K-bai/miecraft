# 计算能量
function miecraft:sheep_energy/item_to_score
# 检测核心 调用对应检测能量
execute if block ~ ~-1 ~ white_wool if block ~ ~-2 ~ bone_block run function miecraft:crafting/pots/type/white
execute if block ~ ~-1 ~ orange_wool if block ~ ~-2 ~ hay_block run function miecraft:crafting/pots/type/orange
execute if block ~ ~-1 ~ magenta_wool if block ~ ~-2 ~ tnt run function miecraft:crafting/pots/type/magenta
execute if block ~ ~-1 ~ light_blue_wool if block ~ ~-2 ~ lapis_block run function miecraft:crafting/pots/type/light_blue
execute if block ~ ~-1 ~ yellow_wool if block ~ ~-2 ~ glowstone run function miecraft:crafting/pots/type/yellow
execute if block ~ ~-1 ~ lime_wool if block ~ ~-2 ~ composter run function miecraft:crafting/pots/type/lime
execute if block ~ ~-1 ~ pink_wool if block ~ ~-2 ~ melon run function miecraft:crafting/pots/type/pink
execute if block ~ ~-1 ~ gray_wool if block ~ ~-2 ~ iron_block run function miecraft:crafting/pots/type/gray
execute if block ~ ~-1 ~ light_gray_wool if block ~ ~-2 ~ nether_wart_block run function miecraft:crafting/pots/type/light_gray
execute if block ~ ~-1 ~ cyan_wool if block ~ ~-2 ~ prismarine run function miecraft:crafting/pots/type/cyan
execute if block ~ ~-1 ~ purple_wool if block ~ ~-2 ~ purpur_block run function miecraft:crafting/pots/type/purple
execute if block ~ ~-1 ~ blue_wool if block ~ ~-2 ~ cauldron[level=3] run function miecraft:crafting/pots/type/blue
execute if block ~ ~-1 ~ brown_wool if block ~ ~-2 ~ mushroom_stem run function miecraft:crafting/pots/type/brown
execute if block ~ ~-1 ~ green_wool if block ~ ~-2 ~ mossy_stone_bricks run function miecraft:crafting/pots/type/green
execute if block ~ ~-1 ~ red_wool if block ~ ~-2 ~ magma_block run function miecraft:crafting/pots/type/red
execute if block ~ ~-1 ~ black_wool if block ~ ~-2 ~ dragon_egg run function miecraft:crafting/pots/type/black


