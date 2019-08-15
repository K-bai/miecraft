# 计算砍树顺序
execute as @e[tag=mie_green_log_temp] run scoreboard players set @s mie_temp1 0
execute as @e[tag=mie_green_log_temp] run scoreboard players operation @s mie_temp1 = @s mie_green_t
execute as @e[tag=mie_green_log_temp] run scoreboard players operation @s mie_green_t = @e[tag=mie_player_temp,limit=1] mie_temp1
execute as @e[tag=mie_green_log_temp] run scoreboard players operation @s mie_green_t -= @s mie_temp1

# 加新tag
tag @e[tag=mie_green_log_temp] add mie_green_log
tag @e[tag=mie_green_log_temp] remove mie_green_log_temp