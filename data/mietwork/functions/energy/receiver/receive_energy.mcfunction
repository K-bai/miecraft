# 寻找可有需求的方块 此处有dxdydz bug
execute align xyz positioned ~-1 ~ ~ as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~1 ~ ~ as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~ ~ ~-1 as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~ ~ ~1 as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute as @e[tag=mie_block_need_temp] at @s run function mietwork:energy/need/main
execute as @e[tag=mie_block_need_temp] if score @s mie_eg_white_t matches 0 if score @s mie_eg_orange_t matches 0 if score @s mie_eg_magenta_t matches 0 if score @s mie_eg_l_blue_t matches 0 if score @s mie_eg_yellow_t matches 0 if score @s mie_eg_lime_t matches 0 if score @s mie_eg_pink_t matches 0 if score @s mie_eg_gray_t matches 0 if score @s mie_eg_l_gray_t matches 0 if score @s mie_eg_cyan_t matches 0 if score @s mie_eg_purple_t matches 0 if score @s mie_eg_blue_t matches 0 if score @s mie_eg_brown_t matches 0 if score @s mie_eg_green_t matches 0 if score @s mie_eg_red_t matches 0 if score @s mie_eg_black_t matches 0 run tag @s remove mie_block_need_temp

# 添加能量
execute if score @s mie_eg_white matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_white_t=1..}] mie_eg_white 1
execute if score @s mie_eg_orange matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_orange_t=1..}] mie_eg_orange 1
execute if score @s mie_eg_magenta matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_magenta_t=1..}] mie_eg_magenta 1
execute if score @s mie_eg_l_blue matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_l_blue_t=1..}] mie_eg_l_blue 1
execute if score @s mie_eg_yellow matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_yellow_t=1..}] mie_eg_yellow 1
execute if score @s mie_eg_lime matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_lime_t=1..}] mie_eg_lime 1
execute if score @s mie_eg_pink matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_pink_t=1..}] mie_eg_pink 1
execute if score @s mie_eg_gray matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_gray_t=1..}] mie_eg_gray 1
execute if score @s mie_eg_l_gray matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_l_gray_t=1..}] mie_eg_l_gray 1
execute if score @s mie_eg_cyan matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_cyan_t=1..}] mie_eg_cyan 1
execute if score @s mie_eg_purple matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_purple_t=1..}] mie_eg_purple 1
execute if score @s mie_eg_blue matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_blue_t=1..}] mie_eg_blue 1
execute if score @s mie_eg_brown matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_brown_t=1..}] mie_eg_brown 1
execute if score @s mie_eg_green matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_green_t=1..}] mie_eg_green 1
execute if score @s mie_eg_red matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_red_t=1..}] mie_eg_red 1
execute if score @s mie_eg_black matches 1.. run scoreboard players add @e[tag=mie_block_need_temp,limit=1,sort=random,scores={mie_eg_black_t=1..}] mie_eg_black 1


# 删除标记
tag @e[tag=mie_block_need_temp] remove mie_block_need_temp