# 物品本身为执行者，执行坐标已移到预设结构中心
# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp6 0
# 计算第一层石砖数量
execute store result score @s mie_temp1 run clone ~3 ~ ~3 ~-3 ~ ~-3 ~-3 ~ ~-3 filtered stone_bricks force
# 计算第一层书架数量
execute if score @s mie_temp1 matches 24 store result score @s mie_temp2 run clone ~4 ~ ~4 ~-4 ~ ~-4 ~-4 ~ ~-4 filtered bookshelf force
# 计算第一层黑曜石数量
scoreboard players set @s mie_temp1 0
execute if score @s mie_temp2 matches 32 store result score @s mie_temp1 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered obsidian force
# 计算上层半砖数量
execute if score @s mie_temp1 matches 25 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered #minecraft:slabs force
execute if score @s mie_temp2 matches 8 run scoreboard players set @s mie_temp6 1
scoreboard players set @s mie_temp2 0
# 确定上层半砖位置
execute if score @s mie_temp6 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~2 #minecraft:slabs
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~ #minecraft:slabs
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~-2 #minecraft:slabs
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~2 #minecraft:slabs
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~ #minecraft:slabs
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~-2 #minecraft:slabs
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~ ~1 ~2 #minecraft:slabs
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~ ~1 ~-2 #minecraft:slabs
# 计算上层羊毛毯数量
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered white_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered orange_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered magenta_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered light_blue_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered yellow_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered lime_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered pink_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered gray_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered light_gray_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered cyan_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered purple_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered blue_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered brown_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered green_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered red_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~4 ~1 ~4 ~-4 ~1 ~-4 ~-4 ~1 ~-4 filtered black_carpet force
# 确定上层羊毛毯位置
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~4 ~1 ~-4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~4 ~1 ~-2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~4 ~1 ~ #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~4 ~1 ~2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~4 ~1 ~4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-4 ~1 ~-4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-4 ~1 ~-2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-4 ~1 ~ #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-4 ~1 ~2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-4 ~1 ~4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~-4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~ ~1 ~4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~ ~1 ~-4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~4 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~-4 #minecraft:carpets

# 给出结果
scoreboard players set @s mie_temp6 0
execute if score @s mie_temp2 matches 1 run scoreboard players set @s mie_temp6 1
