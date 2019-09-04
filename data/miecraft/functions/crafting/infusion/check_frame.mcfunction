# 物品本身为执行者，执行坐标已移到预设结构中心
# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp6 0
# 计算第一层石砖数量
execute store result score @s mie_temp1 run clone ~1 ~ ~1 ~-1 ~ ~-1 ~-1 ~ ~-1 filtered stone_bricks force
# 计算第一层书架数量
execute if score @s mie_temp1 matches 9 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered bookshelf force
execute if score @s mie_temp2 matches 16 run scoreboard players set @s mie_temp6 1
scoreboard players set @s mie_temp2 0
# 计算上层羊毛毯数量
execute if score @s mie_temp6 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered white_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered orange_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered magenta_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered light_blue_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered yellow_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered lime_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered pink_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered gray_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered light_gray_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered cyan_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered purple_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered blue_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered brown_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered green_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered red_carpet force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~1 ~2 ~-2 ~1 ~-2 ~-2 ~1 ~-2 filtered black_carpet force
# 确定上层羊毛毯位置
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~-2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~-1 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~ #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~1 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~2 ~1 ~2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~-2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~-1 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~ #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~1 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-2 ~1 ~2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~1 ~1 ~2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~1 ~1 ~-2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~ ~1 ~2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~ ~1 ~-2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-1 ~1 ~2 #minecraft:carpets
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 if block ~-1 ~1 ~-2 #minecraft:carpets

# 给出结果
scoreboard players set @s mie_temp6 0
execute if score @s mie_temp2 matches 1 run scoreboard players set @s mie_temp6 1
