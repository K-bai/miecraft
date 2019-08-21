# 检测核心物品
execute if score @s mie_temp1 matches 0 if entity @e[tag=mie_item_other_locked,nbt={Item:{id:"minecraft:diamond_sword"}},dx=1,dy=1,dz=1] run function miecraft:crafting/infusion/item/diamond_sword/main
