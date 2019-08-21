# 计算能量
function miecraft:sheep_energy/item_to_score
execute if score @s mie_eg_l_gray matches ..149 run scoreboard players set @s mie_temp1 1
execute if score @s mie_eg_l_gray matches 150..199 run scoreboard players set @s mie_temp1 2
execute if score @s mie_eg_l_gray matches 200..249 run scoreboard players set @s mie_temp1 4
execute if score @s mie_eg_l_gray matches 250..299 run scoreboard players set @s mie_temp1 8
execute if score @s mie_eg_l_gray matches 300.. run scoreboard players set @s mie_temp1 20

# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players operation @s mie_eg_l_gray = @s mie_temp1
function miecraft:sheep_energy/score_to_item/remove
