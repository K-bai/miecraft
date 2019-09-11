# 物品锁定在注魔台上
function miecraft:crafting/infusion/lock/main

# 玩家捡物品解锁
execute as @e[type=item,tag=mie_item_inf_locked] at @s if entity @a[distance=...6] run scoreboard players add @s mie_item_lock_t 2
scoreboard players remove @e[scores={mie_item_lock_t=1..}] 1
execute as @e[type=item,tag=mie_item_inf_locked,scores={mie_item_lock_t=20..}] run function miecraft:crafting/infusion/lock/unlock


# lock的物品特效
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=0}] at @s run particle minecraft:entity_effect ~ ~ ~ 1 1 1 1 0
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=1..}] at @s run particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 2
execute as @e[type=item,tag=mie_item_inf_white_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 1 1 1 1 0
execute as @e[type=item,tag=mie_item_inf_orange_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.941 0.463 0.075 1 0
execute as @e[type=item,tag=mie_item_inf_magenta_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.741 0.267 0.702 1 0
execute as @e[type=item,tag=mie_item_inf_light_blue_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.227 0.686 0.851 1 0
execute as @e[type=item,tag=mie_item_inf_yellow_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.973 0.776 0.153 1 0
execute as @e[type=item,tag=mie_item_inf_lime_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.439 0.725 0.098 1 0
execute as @e[type=item,tag=mie_item_inf_pink_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.929 0.553 0.675 1 0
execute as @e[type=item,tag=mie_item_inf_gray_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.243 0.267 0.278 1 0
execute as @e[type=item,tag=mie_item_inf_light_gray_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.557 0.557 0.525 1 0
execute as @e[type=item,tag=mie_item_inf_cyan_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.082 0.537 0.569 1 0
execute as @e[type=item,tag=mie_item_inf_purple_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.475 0.165 0.675 1 0
execute as @e[type=item,tag=mie_item_inf_blue_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.208 0.224 0.616 1 0
execute as @e[type=item,tag=mie_item_inf_brown_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.447 0.278 0.157 1 0
execute as @e[type=item,tag=mie_item_inf_green_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.329 0.427 0.106 1 0
execute as @e[type=item,tag=mie_item_inf_red_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.631 0.153 0.133 1 0
execute as @e[type=item,tag=mie_item_inf_black_locked] at @s run particle minecraft:entity_effect ~ ~-.2 ~ 0.078 0.082 0.098 1 0
# lock物品显示能量
execute as @e[type=item,tag=mie_item_inf_core_locked] at @s run function miecraft:crafting/infusion/lock/show_energy


# 找读讲台玩家
execute as @a[scores={mie_fuck_lectern=1..}] at @s run function miecraft:crafting/infusion/read_lectern
# 清空读讲台计分板
scoreboard players set @a[scores={mie_fuck_lectern=1..}] mie_fuck_lectern 0


# 注魔物品执行命令
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=1..}] run scoreboard players add @s mie_item_inf_c 1
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=1..,mie_item_inf_c=10..}] run scoreboard players set @s mie_item_inf_c 0
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=1..,mie_item_inf_c=1}] at @s run function miecraft:crafting/infusion/process/tick
# 注魔物品无能量效果
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=2..20}] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 .03 1
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=21..40}] at @s run particle minecraft:smoke ~ ~ ~ .1 .1 .1 .04 2
execute as @e[type=item,tag=mie_item_inf_core_locked,scores={mie_item_inf_t=41..}] at @s run particle minecraft:smoke ~ ~ ~ .2 .2 .2 .06 4

# 注魔粒子效果
execute as @e[type=area_effect_cloud,tag=mie_inf_particle] at @s run function miecraft:crafting/infusion/particle/tick