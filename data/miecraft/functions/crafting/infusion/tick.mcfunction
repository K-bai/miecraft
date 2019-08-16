# 物品丢法阵上锁定解锁
function miecraft:crafting/infusion/lock/main

# 玩家捡物品解锁
execute as @e[type=item,tag=mie_item_locked] at @s if entity @a[distance=...4] run scoreboard players add @s mie_item_lock_t 2
scoreboard players remove @e[scores={mie_item_lock_t=1..}] 1
execute as @e[type=item,tag=mie_item_locked,scores={mie_item_lock_t=20..}] run function miecraft:crafting/infusion/lock/clear_lock_tag

# lock的物品特效
execute as @e[type=item,tag=mie_item_other_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 1 1 1 1 0
execute as @e[type=item,tag=mie_item_white_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 1 1 1 1 0
execute as @e[type=item,tag=mie_item_orange_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.941 0.463 0.075 1 0
execute as @e[type=item,tag=mie_item_magenta_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.741 0.267 0.702 1 0
execute as @e[type=item,tag=mie_item_light_blue_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.227 0.686 0.851 1 0
execute as @e[type=item,tag=mie_item_yellow_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.973 0.776 0.153 1 0
execute as @e[type=item,tag=mie_item_lime_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.439 0.725 0.098 1 0
execute as @e[type=item,tag=mie_item_pink_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.929 0.553 0.675 1 0
execute as @e[type=item,tag=mie_item_gray_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.243 0.267 0.278 1 0
execute as @e[type=item,tag=mie_item_light_gray_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.557 0.557 0.525 1 0
execute as @e[type=item,tag=mie_item_cyan_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.082 0.537 0.569 1 0
execute as @e[type=item,tag=mie_item_purple_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.475 0.165 0.675 1 0
execute as @e[type=item,tag=mie_item_blue_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.208 0.224 0.616 1 0
execute as @e[type=item,tag=mie_item_brown_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.447 0.278 0.157 1 0
execute as @e[type=item,tag=mie_item_green_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.329 0.427 0.106 1 0
execute as @e[type=item,tag=mie_item_red_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.631 0.153 0.133 1 0
execute as @e[type=item,tag=mie_item_black_locked] at @s run particle minecraft:entity_effect ~ ~ ~ 0.078 0.082 0.098 1 0

# 找读讲台玩家
execute as @a[scores={mie_fuck_lectern=1..}] at @s run function miecraft:crafting/infusion/read_lectern
# 清空读讲台计分板
scoreboard players set @a[scores={mie_fuck_lectern=1..}] mie_fuck_lectern 0
