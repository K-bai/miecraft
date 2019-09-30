# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp3 0
execute at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_ainf_other_locked,dx=5,dy=1,dz=5] add mie_item_temp
# 物品判定
function #miecraft:infusion/advanced_infusion_interface
function #miecraft:advanced_infusion/other_items_detect



# 清空能量
function miecraft:crafting/infusion/recipes/common
# 完成加能量
execute if entity @s[tag=mie_item_complete] run function #miecraft:advanced_infusion/energy_demand
# 清除
tag @s remove mie_item_complete
tag @e[type=item,tag=mie_item_temp] remove mie_item_temp
