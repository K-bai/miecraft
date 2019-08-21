# 物品锁定 普通物品
execute as @e[type=item,tag=!mie_item_other_inf_locked,nbt={OnGround:1b,Item:{id:"minecraft:diamond_sword"}}] at @s unless entity @e[type=item,tag=mie_item_other_locked,distance=0.0001..1] if block ~ ~ ~ lectern run function miecraft:crafting/infusion/lock/item
# 物品锁定 魔法罐
execute as @e[type=item,tag=!mie_item_white_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:0}}}] at @s unless entity @e[type=item,tag=mie_item_white_locked,distance=0.0001..1] if block ~ ~-1 ~ white_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_orange_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:1}}}] at @s unless entity @e[type=item,tag=mie_item_orange_locked,distance=0.0001..1] if block ~ ~-1 ~ orange_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_magenta_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:2}}}] at @s unless entity @e[type=item,tag=mie_item_magenta_locked,distance=0.0001..1] if block ~ ~-1 ~ magenta_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_light_blue_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:3}}}] at @s unless entity @e[type=item,tag=mie_item_light_blue_locked,distance=0.0001..1] if block ~ ~-1 ~ light_blue_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_yellow_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:4}}}] at @s unless entity @e[type=item,tag=mie_item_yellow_locked,distance=0.0001..1] if block ~ ~-1 ~ yellow_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_lime_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:5}}}] at @s unless entity @e[type=item,tag=mie_item_lime_locked,distance=0.0001..1] if block ~ ~-1 ~ lime_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_pink_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:6}}}] at @s unless entity @e[type=item,tag=mie_item_pink_locked,distance=0.0001..1] if block ~ ~-1 ~ pink_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_gray_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:7}}}] at @s unless entity @e[type=item,tag=mie_item_gray_locked,distance=0.0001..1] if block ~ ~-1 ~ gray_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_light_gray_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:8}}}] at @s unless entity @e[type=item,tag=mie_item_light_gray_locked,distance=0.0001..1] if block ~ ~-1 ~ light_gray_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_cyan_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:9}}}] at @s unless entity @e[type=item,tag=mie_item_cyan_locked,distance=0.0001..1] if block ~ ~-1 ~ cyan_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_purple_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:10}}}] at @s unless entity @e[type=item,tag=mie_item_purple_locked,distance=0.0001..1] if block ~ ~-1 ~ purple_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_blue_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:11}}}] at @s unless entity @e[type=item,tag=mie_item_blue_locked,distance=0.0001..1] if block ~ ~-1 ~ blue_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_brown_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:12}}}] at @s unless entity @e[type=item,tag=mie_item_brown_locked,distance=0.0001..1] if block ~ ~-1 ~ brown_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_green_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:13}}}] at @s unless entity @e[type=item,tag=mie_item_green_locked,distance=0.0001..1] if block ~ ~-1 ~ green_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_red_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:14}}}] at @s unless entity @e[type=item,tag=mie_item_red_locked,distance=0.0001..1] if block ~ ~-1 ~ red_wool run function miecraft:crafting/infusion/lock/pot
execute as @e[type=item,tag=!mie_item_black_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:3,mie_data1:15}}}] at @s unless entity @e[type=item,tag=mie_item_black_locked,distance=0.0001..1] if block ~ ~-1 ~ black_wool run function miecraft:crafting/infusion/lock/pot

# 物品解锁 普通物品
execute as @e[type=item,tag=mie_item_other_locked] at @s if block ~ ~ ~ lectern run function miecraft:crafting/infusion/lock/item
# 物品解锁 魔法罐
execute as @e[type=item,tag=mie_item_pot_locked] at @s run function miecraft:crafting/infusion/lock/pot


# 物品直接解锁 普通物品
execute as @e[type=item,tag=mie_item_other_locked] at @s unless block ~ ~ ~ lectern run function miecraft:crafting/infusion/lock/clear_lock_tag
# 物品直接解锁 魔法罐
execute as @e[type=item,tag=mie_item_white_locked] at @s unless block ~ ~-1 ~ white_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_orange_locked] at @s unless block ~ ~-1 ~ orange_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_magenta_locked] at @s unless block ~ ~-1 ~ magenta_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_light_blue_locked] at @s unless block ~ ~-1 ~ light_blue_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_yellow_locked] at @s unless block ~ ~-1 ~ yellow_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_lime_locked] at @s unless block ~ ~-1 ~ lime_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_pink_locked] at @s unless block ~ ~-1 ~ pink_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_gray_locked] at @s unless block ~ ~-1 ~ gray_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_light_gray_locked] at @s unless block ~ ~-1 ~ light_gray_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_cyan_locked] at @s unless block ~ ~-1 ~ cyan_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_purple_locked] at @s unless block ~ ~-1 ~ purple_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_blue_locked] at @s unless block ~ ~-1 ~ blue_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_brown_locked] at @s unless block ~ ~-1 ~ brown_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_green_locked] at @s unless block ~ ~-1 ~ green_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_red_locked] at @s unless block ~ ~-1 ~ red_wool run function miecraft:crafting/infusion/lock/clear_lock_tag
execute as @e[type=item,tag=mie_item_black_locked] at @s unless block ~ ~-1 ~ black_wool run function miecraft:crafting/infusion/lock/clear_lock_tag

