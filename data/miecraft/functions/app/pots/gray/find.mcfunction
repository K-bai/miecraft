# 判断碰到哪个面
execute if block ~.2 ~ ~ air run tag @s add mie_gray_touch_x
execute if block ~-.2 ~ ~ air run tag @s add mie_gray_touch_x
execute if block ~ ~.2 ~ air run tag @s add mie_gray_touch_y
execute if block ~ ~-.2 ~ air run tag @s add mie_gray_touch_y
execute if block ~ ~ ~.2 air run tag @s add mie_gray_touch_z
execute if block ~ ~ ~-.2 air run tag @s add mie_gray_touch_z


# 计算能量
function miecraft:sheep_energy/item_to_score
# 判定是否有方块
scoreboard players set @s mie_temp1 0
execute if entity @s[tag=mie_gray_touch_x] store result score @s mie_temp1 run clone ~ ~1 ~1 ~ ~-1 ~-1 ~ ~-1 ~-1 filtered #miecraft:gray_destroy force
execute if entity @s[tag=mie_gray_touch_y] store result score @s mie_temp1 run clone ~1 ~ ~1 ~-1 ~ ~-1 ~-1 ~ ~-1 filtered #miecraft:gray_destroy force
execute if entity @s[tag=mie_gray_touch_z] store result score @s mie_temp1 run clone ~1 ~1 ~ ~-1 ~-1 ~ ~-1 ~-1 ~ filtered #miecraft:gray_destroy force
# 有则破坏
execute if block ~ ~ ~ minecraft:iron_ore run scoreboard players set @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. if score @s mie_eg_gray matches 1.. run function miecraft:app/pots/gray/break

# 消耗能量
execute if score @s mie_temp1 matches 1.. run function miecraft:sheep_energy/reset_score
execute if score @s mie_temp1 matches 1.. run scoreboard players set @s mie_eg_gray 1
execute if score @s mie_temp1 matches 1.. run function miecraft:sheep_energy/score_to_item/remove


# 删除tag
tag @s[tag=mie_gray_touch_x] remove mie_gray_touch_x
tag @s[tag=mie_gray_touch_y] remove mie_gray_touch_y
tag @s[tag=mie_gray_touch_z] remove mie_gray_touch_z