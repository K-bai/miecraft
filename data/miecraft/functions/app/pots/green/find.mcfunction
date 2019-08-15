# 计算能量
function miecraft:sheep_energy/item_to_score
# 标记自己
tag @s add mie_player_temp

# 开始递归计算木头数量
function miecraft:app/pots/green/recurse
execute store result score @s mie_temp1 if entity @e[tag=mie_green_log_temp]
# 判定最初方块下是否为泥土
scoreboard players set @s mie_temp2 0
execute if block ~ ~-1 ~ #minecraft:dirt_like run scoreboard players set @s mie_temp2 1
# 计算木头周边树叶数量
scoreboard players set @s mie_temp3 0
execute as @e[tag=mie_green_log_temp] at @s store result score @s mie_temp1 run clone ~1 ~1 ~1 ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 filtered #minecraft:leaves[persistent=false] force
execute as @e[tag=mie_green_log_temp] run scoreboard players operation @e[tag=mie_player_temp,limit=1] mie_temp3 += @s mie_temp1

# 若符合条件
execute if entity @s[scores={mie_temp2=1,mie_temp3=8..}] if score @s mie_eg_green >= @s mie_temp1 run function miecraft:app/pots/green/start_chop

# 删除tag和多余实体
tag @s remove mie_player_temp
kill @e[tag=mie_green_log_temp]
# 消耗能量
execute if entity @s[scores={mie_temp2=1,mie_temp3=8..}] run function miecraft:sheep_energy/reset_score
execute if entity @s[scores={mie_temp2=1,mie_temp3=8..}] run scoreboard players operation @s mie_eg_green = @s mie_temp1
execute if entity @s[scores={mie_temp2=1,mie_temp3=8..}] run function miecraft:sheep_energy/score_to_item/remove
