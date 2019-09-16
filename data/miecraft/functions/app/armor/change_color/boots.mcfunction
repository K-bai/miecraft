# 保存当前颜色
execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:103b,tag:{mie_id:"sheep_boots"}}].tag.mie_data1
execute store result score @s mie_temp2 run data get entity @s SelectedItem.tag.mie_data1
# 改变颜色
execute unless score @s mie_temp1 = @s mie_temp2 run function miecraft:app/armor/change_color/all