# 计算能量
function miecraft:sheep_energy/item_to_score

# 修改nbt
execute store result entity @s SelectedItem.tag.AttributeModifiers[{Name:"mie_diamond_sword_att_damage"}].Amount double 0.1 run scoreboard players get @s mie_eg_l_gray