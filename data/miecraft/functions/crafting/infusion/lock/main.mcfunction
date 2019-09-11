# 首先是新物品锁定的判定
# 核心物品锁定
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{id:"minecraft:shears"}}] unless data entity @s Item.tag.mie_id at @s unless entity @e[type=item,tag=mie_item_inf_core_locked,distance=0.0001..5] if block ~ ~ ~ lectern run function miecraft:crafting/infusion/lock/core_item
# 魔法罐锁定
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:0}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ white_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:1}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ orange_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:2}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ magenta_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:3}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ light_blue_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:4}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ yellow_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:5}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ lime_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:6}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ pink_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:7}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ gray_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:8}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ light_gray_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:9}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ cyan_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:10}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ purple_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:11}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ blue_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:12}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ brown_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:13}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ green_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:14}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ red_carpet run function miecraft:crafting/infusion/lock/pots
execute as @e[type=item,tag=!mie_item_inf_locked,nbt={OnGround:1b,Item:{tag:{mie_id:"pot",mie_data1:15}}}] at @s unless entity @e[type=item,tag=mie_item_inf_locked,distance=0.0001...7] if block ~ ~ ~ black_carpet run function miecraft:crafting/infusion/lock/pots


# 核心物品不在讲台上解锁
execute as @e[type=item,tag=mie_item_inf_core_locked] at @s unless block ~ ~ ~ lectern run function miecraft:crafting/infusion/lock/unlock
# 魔法罐不在毯子上解锁
execute as @e[type=item,tag=mie_item_inf_white_locked] at @s unless block ~ ~ ~ white_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_orange_locked] at @s unless block ~ ~ ~ orange_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_magenta_locked] at @s unless block ~ ~ ~ magenta_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_light_blue_locked] at @s unless block ~ ~ ~ light_blue_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_yellow_locked] at @s unless block ~ ~ ~ yellow_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_lime_locked] at @s unless block ~ ~ ~ lime_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_pink_locked] at @s unless block ~ ~ ~ pink_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_gray_locked] at @s unless block ~ ~ ~ gray_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_light_gray_locked] at @s unless block ~ ~ ~ light_gray_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_cyan_locked] at @s unless block ~ ~ ~ cyan_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_purple_locked] at @s unless block ~ ~ ~ purple_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_blue_locked] at @s unless block ~ ~ ~ blue_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_brown_locked] at @s unless block ~ ~ ~ brown_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_green_locked] at @s unless block ~ ~ ~ green_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_red_locked] at @s unless block ~ ~ ~ red_carpet run function miecraft:crafting/infusion/lock/unlock
execute as @e[type=item,tag=mie_item_inf_black_locked] at @s unless block ~ ~ ~ black_carpet run function miecraft:crafting/infusion/lock/unlock



# 核心物品发现框架错误解锁
execute as @e[type=item,tag=mie_item_inf_core_locked] at @s run function miecraft:crafting/infusion/lock/core_item
# 魔法罐发现框架错误解锁
execute as @e[type=item,tag=mie_item_inf_locked,tag=!mie_item_inf_core_locked] at @s run function miecraft:crafting/infusion/lock/pots
