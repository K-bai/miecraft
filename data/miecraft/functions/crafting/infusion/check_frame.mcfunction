# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0
# 计算讲台周围空气数量
execute store result score @s mie_temp1 run clone ~1 ~ ~1 ~-1 ~ ~-1 ~-1 ~ ~-1 filtered air force
# 计算讲台周围羊毛种类
execute if score @s mie_temp1 matches 8 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered white_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered orange_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered magenta_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered light_blue_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered yellow_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered lime_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered pink_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered gray_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered light_gray_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered cyan_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered purple_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered blue_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered brown_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered green_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered red_wool force
execute if score @s mie_temp2 matches 1 store result score @s mie_temp2 run clone ~2 ~ ~2 ~-2 ~ ~-2 ~-2 ~ ~-2 filtered black_wool force
