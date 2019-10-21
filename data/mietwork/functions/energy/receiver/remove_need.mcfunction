# 寻找可减去需求的方块 此处有dxdydz bug
execute align xyz positioned ~-1 ~ ~ as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~1 ~ ~ as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~ ~ ~-1 as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute align xyz positioned ~ ~ ~1 as @e[tag=mie_block_type_need_energy,dx=0,dy=0,dz=0] run tag @s add mie_block_need_temp
execute as @e[tag=mie_block_need_temp] if score @s mie_eg_white_t matches 0 if score @s mie_eg_orange_t matches 0 if score @s mie_eg_magenta_t matches 0 if score @s mie_eg_l_blue_t matches 0 if score @s mie_eg_yellow_t matches 0 if score @s mie_eg_lime_t matches 0 if score @s mie_eg_pink_t matches 0 if score @s mie_eg_gray_t matches 0 if score @s mie_eg_l_gray_t matches 0 if score @s mie_eg_cyan_t matches 0 if score @s mie_eg_purple_t matches 0 if score @s mie_eg_blue_t matches 0 if score @s mie_eg_brown_t matches 0 if score @s mie_eg_green_t matches 0 if score @s mie_eg_red_t matches 0 if score @s mie_eg_black_t matches 0 run tag @s remove mie_block_need_temp

# 减去需求
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_white_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_white
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_orange_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_orange
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_magenta_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_magenta
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_l_blue_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_l_blue
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_yellow_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_yellow
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_lime_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_lime
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_pink_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_pink
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_gray_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_gray
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_l_gray_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_l_gray
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_cyan_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_cyan
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_purple_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_purple
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_blue_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_blue
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_brown_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_brown
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_green_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_green
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_red_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_red
scoreboard players operation @e[tag=mie_block_need_temp] mie_eg_black_t -= @e[tag=mie_pulse_temp,limit=1] mie_eg_black

# 能量罐需求同步
scoreboard players set @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 0
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_white
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_orange
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_magenta
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_l_blue
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_yellow
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_lime
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_pink
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_gray
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_l_gray
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_cyan
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_purple
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_blue
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_brown
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_green
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_red
scoreboard players operation @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] mie_temp1 += @e[tag=mie_pulse_temp,limit=1] mie_eg_black

execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_white_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_orange_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_magenta_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_l_blue_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_yellow_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_lime_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_pink_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_gray_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_l_gray_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_cyan_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_purple_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_blue_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_brown_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_green_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_red_t = @s mie_temp1
execute as @e[tag=mie_block_need_temp,tag=mie_block_large_universal_energy_jar] run scoreboard players operation @s mie_eg_black_t = @s mie_temp1

# 删除标记
tag @e[tag=mie_block_need_temp] remove mie_block_need_temp