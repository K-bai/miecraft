
# 物品锁定在注魔台上
function miecraft:crafting/advanced_infusion/lock/main

# 玩家捡物品解锁
execute as @e[type=item,tag=mie_item_ainf_locked] at @s if entity @a[distance=...6] run scoreboard players add @s mie_item_lock_t 2
scoreboard players remove @e[scores={mie_item_lock_t=1..}] 1
execute as @e[type=item,tag=mie_item_ainf_locked,scores={mie_item_lock_t=20..}] run function miecraft:crafting/advanced_infusion/lock/unlock

# lock的物品特效
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=0}] at @s run particle minecraft:entity_effect ~ ~ ~ 1 1 1 1 0
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=1..}] at @s run particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 2
execute as @e[type=item,tag=mie_item_ainf_other_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 1 1 1 1 0
execute as @e[type=item,tag=mie_item_ainf_white_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 1 1 1 1 0
execute as @e[type=item,tag=mie_item_ainf_orange_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.941 0.463 0.075 1 0
execute as @e[type=item,tag=mie_item_ainf_magenta_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.741 0.267 0.702 1 0
execute as @e[type=item,tag=mie_item_ainf_light_blue_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.227 0.686 0.851 1 0
execute as @e[type=item,tag=mie_item_ainf_yellow_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.973 0.776 0.153 1 0
execute as @e[type=item,tag=mie_item_ainf_lime_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.439 0.725 0.098 1 0
execute as @e[type=item,tag=mie_item_ainf_pink_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.929 0.553 0.675 1 0
execute as @e[type=item,tag=mie_item_ainf_gray_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.243 0.267 0.278 1 0
execute as @e[type=item,tag=mie_item_ainf_light_gray_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.557 0.557 0.525 1 0
execute as @e[type=item,tag=mie_item_ainf_cyan_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.082 0.537 0.569 1 0
execute as @e[type=item,tag=mie_item_ainf_purple_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.475 0.165 0.675 1 0
execute as @e[type=item,tag=mie_item_ainf_blue_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.208 0.224 0.616 1 0
execute as @e[type=item,tag=mie_item_ainf_brown_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.447 0.278 0.157 1 0
execute as @e[type=item,tag=mie_item_ainf_green_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.329 0.427 0.106 1 0
execute as @e[type=item,tag=mie_item_ainf_red_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.631 0.153 0.133 1 0
execute as @e[type=item,tag=mie_item_ainf_black_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.078 0.082 0.098 1 0
# lock物品显示能量
execute as @e[type=item,tag=mie_item_ainf_core_locked] at @s run function miecraft:crafting/infusion/lock/show_energy
# lock的其他物品允许合并
execute as @e[type=item,tag=mie_item_ainf_other_locked] at @s run data merge entity @s {PickupDelay:100,Age:100}


# 找读讲台玩家
execute as @a[scores={mie_ri_lectern=1..}] at @s run function miecraft:crafting/advanced_infusion/read_lectern
# 清空读讲台计分板
scoreboard players set @a[scores={mie_ri_lectern=1..}] mie_ri_lectern 0



# 注魔物品执行命令
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=1..}] run scoreboard players add @s mie_item_inf_c 1
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=1..,mie_item_inf_c=20..}] run scoreboard players set @s mie_item_inf_c 0
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=1..,mie_item_inf_c=1}] at @s run function miecraft:crafting/advanced_infusion/process/tick
# 注魔物品无能量效果
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=2..10}] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 .03 1
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=11..20}] at @s run particle minecraft:smoke ~ ~ ~ .1 .1 .1 .04 2
execute as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=21..}] at @s run particle minecraft:smoke ~ ~ ~ .2 .2 .2 .06 4

# 注魔粒子效果
execute as @e[type=area_effect_cloud,tag=mie_ainf_particle] at @s run function miecraft:crafting/advanced_infusion/particle/tick
execute as @e[type=area_effect_cloud,tag=mie_ainf_particle2] at @s run function miecraft:crafting/advanced_infusion/particle/tick2