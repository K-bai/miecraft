# 寻找可有需求的方块 此处有dxdydz bug
execute align xyz positioned ~-1 ~ ~ as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~1 ~ ~ as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~ ~ ~-1 as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~ ~ ~1 as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute as @e[tag=mie_block_need_temp] if score @s mie_eg_white_t matches 0 if score @s mie_eg_orange_t matches 0 if score @s mie_eg_magenta_t matches 0 if score @s mie_eg_l_blue_t matches 0 if score @s mie_eg_yellow_t matches 0 if score @s mie_eg_lime_t matches 0 if score @s mie_eg_pink_t matches 0 if score @s mie_eg_gray_t matches 0 if score @s mie_eg_l_gray_t matches 0 if score @s mie_eg_cyan_t matches 0 if score @s mie_eg_purple_t matches 0 if score @s mie_eg_blue_t matches 0 if score @s mie_eg_brown_t matches 0 if score @s mie_eg_green_t matches 0 if score @s mie_eg_red_t matches 0 if score @s mie_eg_black_t matches 0 run tag @s remove mie_block_need_temp

# 清空
scoreboard players set @s mie_eg_white_t 0
scoreboard players set @s mie_eg_orange_t 0
scoreboard players set @s mie_eg_magenta_t 0
scoreboard players set @s mie_eg_l_blue_t 0
scoreboard players set @s mie_eg_yellow_t 0
scoreboard players set @s mie_eg_lime_t 0
scoreboard players set @s mie_eg_pink_t 0
scoreboard players set @s mie_eg_gray_t 0
scoreboard players set @s mie_eg_l_gray_t 0
scoreboard players set @s mie_eg_cyan_t 0
scoreboard players set @s mie_eg_purple_t 0
scoreboard players set @s mie_eg_blue_t 0
scoreboard players set @s mie_eg_brown_t 0
scoreboard players set @s mie_eg_green_t 0
scoreboard players set @s mie_eg_red_t 0
scoreboard players set @s mie_eg_black_t 0
# 所有需求求和
scoreboard players operation @s mie_eg_white_t += @e[tag=mie_block_need_temp] mie_eg_white_t
scoreboard players operation @s mie_eg_orange_t += @e[tag=mie_block_need_temp] mie_eg_orange_t
scoreboard players operation @s mie_eg_magenta_t += @e[tag=mie_block_need_temp] mie_eg_magenta_t
scoreboard players operation @s mie_eg_l_blue_t += @e[tag=mie_block_need_temp] mie_eg_l_blue_t
scoreboard players operation @s mie_eg_yellow_t += @e[tag=mie_block_need_temp] mie_eg_yellow_t
scoreboard players operation @s mie_eg_lime_t += @e[tag=mie_block_need_temp] mie_eg_lime_t
scoreboard players operation @s mie_eg_pink_t += @e[tag=mie_block_need_temp] mie_eg_pink_t
scoreboard players operation @s mie_eg_gray_t += @e[tag=mie_block_need_temp] mie_eg_gray_t
scoreboard players operation @s mie_eg_l_gray_t += @e[tag=mie_block_need_temp] mie_eg_l_gray_t
scoreboard players operation @s mie_eg_cyan_t += @e[tag=mie_block_need_temp] mie_eg_cyan_t
scoreboard players operation @s mie_eg_purple_t += @e[tag=mie_block_need_temp] mie_eg_purple_t
scoreboard players operation @s mie_eg_blue_t += @e[tag=mie_block_need_temp] mie_eg_blue_t
scoreboard players operation @s mie_eg_brown_t += @e[tag=mie_block_need_temp] mie_eg_brown_t
scoreboard players operation @s mie_eg_green_t += @e[tag=mie_block_need_temp] mie_eg_green_t
scoreboard players operation @s mie_eg_red_t += @e[tag=mie_block_need_temp] mie_eg_red_t
scoreboard players operation @s mie_eg_black_t += @e[tag=mie_block_need_temp] mie_eg_black_t

# 删除标记
tag @e[tag=mie_block_need_temp] remove mie_block_need_temp