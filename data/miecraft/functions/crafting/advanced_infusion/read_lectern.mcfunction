# 射线触碰方块
function miecraft:ray_cast/block/main

# 成功标记
tag @s add mie_player_temp
scoreboard players set @s mie_temp1 0
# 若射线终点是讲台就判断物品
execute at @e[tag=mie_ray_mark] if block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{mie_id:"magic_book"}}} align xyz positioned ~.5 ~.9 ~.5 as @e[type=item,tag=mie_item_ainf_core_locked,scores={mie_item_inf_t=0},distance=...1] at @s run function miecraft:crafting/advanced_infusion/recipes/items
# 物品判断正确后开始注魔
execute if score @s mie_temp1 matches 1 at @e[tag=mie_ray_mark] align xyz positioned ~.5 ~.9 ~.5 as @e[type=item,tag=mie_item_ainf_core_locked,distance=...1] at @s run function miecraft:crafting/advanced_infusion/start_inf

# 删除实体
tag @s remove mie_player_temp
kill @e[tag=mie_ray_mark]