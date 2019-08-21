# 检测其余魔法罐
# 浅灰
scoreboard players set @s mie_temp1 0
execute store result score @s mie_temp1 positioned ~-2 ~1 ~-2 run data get entity @e[tag=mie_item_light_gray_locked,dx=5,dy=1,dz=5,limit=1] Item.tag.mie_data2
# 紫红
execute unless score @s mie_temp1 matches 100 run scoreboard players set @s mie_temp1 0
execute if score @s mie_temp1 matches 100 store result score @s mie_temp1 positioned ~-2 ~1 ~-2 run data get entity @e[tag=mie_item_magenta_locked,dx=5,dy=1,dz=5,limit=1] Item.tag.mie_data2
# 红
execute unless score @s mie_temp1 matches 10.. run scoreboard players set @s mie_temp1 0
execute if score @s mie_temp1 matches 10.. store result score @s mie_temp1 positioned ~-2 ~1 ~-2 run data get entity @e[tag=mie_item_red_locked,dx=5,dy=1,dz=5,limit=1] Item.tag.mie_data2

# 如果不满足条件
execute unless score @s mie_temp1 matches 10.. run function miecraft:crafting/infusion/fail

# 如果满足条件
execute if score @s mie_temp1 matches 10.. as @e[tag=mie_item_other_locked,dx=1,dy=1,dz=1] at @s align xyz run function miecraft:crafting/infusion/item/diamond_sword/start

