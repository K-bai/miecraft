# 破坏核心的讲台
setblock ~ ~ ~ air destroy

# 找到参与物品
tag @s add mie_item_inf_locked_new
execute positioned ~-2 ~1 ~-2 run tag @e[tag=mie_item_light_gray_locked,dx=5,dy=1,dz=5] add mie_item_inf_locked_new
execute positioned ~-2 ~1 ~-2 run tag @e[tag=mie_item_magenta_locked,dx=5,dy=1,dz=5] add mie_item_inf_locked_new
execute positioned ~-2 ~1 ~-2 run tag @e[tag=mie_item_red_locked,dx=5,dy=1,dz=5] add mie_item_inf_locked_new
# 参与的魔法罐和核心物品变成另一个锁定tag
tag @e[tag=mie_item_inf_locked_new] add mie_item_inf_locked
tag @s add mie_item_other_inf_locked
tag @e[tag=mie_item_light_gray_locked,tag=mie_item_inf_locked_new] add mie_item_light_gray_inf_locked
tag @e[tag=mie_item_magenta_locked,tag=mie_item_inf_locked_new] add mie_item_magenta_inf_locked
tag @e[tag=mie_item_red_locked,tag=mie_item_inf_locked_new] add mie_item_red_inf_locked
# 去掉锁定tag
execute as @e[tag=mie_item_inf_locked_new] run function miecraft:crafting/infusion/lock/clear_lock_tag

# 重新加上这个锁定的nbt
execute as @e[tag=mie_item_inf_locked_new] run data merge entity @s {PickupDelay:32767,Age:-32768,Motion:[0d,0d,0d],NoGravity:1}



# 清除魔法罐中的能量
scoreboard players set @s mie_temp1 0
# 灰
data modify entity @e[tag=mie_item_light_gray_inf_locked,tag=mie_item_inf_locked_new,limit=1] Item.tag.mie_data2 set value 0
# 紫红
execute store result score @s mie_temp1 run data get entity @e[tag=mie_item_magenta_inf_locked,tag=mie_item_inf_locked_new,limit=1] Item.tag.mie_data2
scoreboard players set @s mie_temp2 10
scoreboard players operation @s mie_temp1 -= @s mie_temp2
execute store result entity @e[tag=mie_item_magenta_inf_locked,tag=mie_item_inf_locked_new,limit=1] Item.tag.mie_data2 int 1 run scoreboard players get @s mie_temp1
# 红
execute store result score @s mie_temp1 run data get entity @e[tag=mie_item_red_inf_locked,tag=mie_item_inf_locked_new,limit=1] Item.tag.mie_data2
scoreboard players set @s mie_temp2 10
scoreboard players operation @s mie_temp1 -= @s mie_temp2
execute store result entity @e[tag=mie_item_red_inf_locked,tag=mie_item_inf_locked_new,limit=1] Item.tag.mie_data2 int 1 run scoreboard players get @s mie_temp1

# 修改Lore
execute as @e[tag=mie_item_inf_locked_new,tag=!mie_item_other_inf_locked] run function miecraft:crafting/infusion/item/sync_lore


# 清除新tag
tag @e[tag=mie_item_inf_locked_new] remove mie_item_inf_locked_new



# 音效
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 1 0.5