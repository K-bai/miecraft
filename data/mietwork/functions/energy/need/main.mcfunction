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

# 每个方块
execute if entity @s[tag=mie_block_large_universal_energy_jar] run function mietwork:energy/need/large_universal_energy_jar
