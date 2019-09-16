# 计算能量
function miecraft:sheep_energy/item_to_score
# 如果有能量就加buff
execute if score @s mie_eg_l_gray matches 1.. run effect give @s minecraft:resistance 2 5 true
