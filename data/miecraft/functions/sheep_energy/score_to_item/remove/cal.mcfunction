# 判断是能剩下 还是一点不剩
execute if score @s mie_temp6 < @s mie_temp3 run function miecraft:sheep_energy/score_to_item/remove/sufficient
execute unless score @s mie_temp6 < @s mie_temp3 run function miecraft:sheep_energy/score_to_item/remove/insufficient
