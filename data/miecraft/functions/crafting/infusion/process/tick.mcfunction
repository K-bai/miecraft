# 找还不足的能量 若找到一个就标记 剩下的不找了
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_white matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_white_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_orange matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_orange_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_magenta matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_magenta_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_l_blue matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_light_blue_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_yellow matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_yellow_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_lime matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_lime_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_pink matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_pink_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_gray matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_gray_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_l_gray matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_light_gray_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_cyan matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_cyan_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_purple matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_purple_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_blue matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_blue_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_brown matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_brown_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_green matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_green_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_red matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_red_locked,dx=5,dy=1,dz=5] add mie_item_temp
execute unless entity @e[type=item,tag=mie_item_temp] if score @s mie_eg_black matches 1.. at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_inf_black_locked,dx=5,dy=1,dz=5] add mie_item_temp

# 消耗魔法罐能量 此时若未消耗就去掉自己的mie_item_temp的tag 表示后续不能减需求和产粒子
execute as @e[type=item,tag=mie_item_temp] run function miecraft:crafting/infusion/process/consume

# 减掉物品需求
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_white_locked] run scoreboard players remove @s mie_eg_white 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_orange_locked] run scoreboard players remove @s mie_eg_orange 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_magenta_locked] run scoreboard players remove @s mie_eg_magenta 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_light_blue_locked] run scoreboard players remove @s mie_eg_l_blue 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_yellow_locked] run scoreboard players remove @s mie_eg_yellow 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_lime_locked] run scoreboard players remove @s mie_eg_lime 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_pink_locked] run scoreboard players remove @s mie_eg_pink 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_gray_locked] run scoreboard players remove @s mie_eg_gray 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_light_gray_locked] run scoreboard players remove @s mie_eg_l_gray 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_cyan_locked] run scoreboard players remove @s mie_eg_cyan 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_purple_locked] run scoreboard players remove @s mie_eg_purple 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_blue_locked] run scoreboard players remove @s mie_eg_blue 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_brown_locked] run scoreboard players remove @s mie_eg_brown 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_green_locked] run scoreboard players remove @s mie_eg_green 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_red_locked] run scoreboard players remove @s mie_eg_red 1
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_black_locked] run scoreboard players remove @s mie_eg_black 1

# 产出粒子效果
execute at @e[type=item,tag=mie_item_temp] run summon area_effect_cloud ~ ~ ~ {Tags:["mie_inf_particle","mie_inf_particle_new"],Duration:999}
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_white_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_white
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_orange_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_orange
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_magenta_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_magenta
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_light_blue_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_light_blue
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_yellow_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_yellow
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_lime_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_lime
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_pink_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_pink
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_gray_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_gray
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_light_gray_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_light_gray
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_cyan_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_cyan
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_purple_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_purple
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_blue_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_blue
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_brown_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_brown
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_green_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_green
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_red_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_red
execute if entity @e[type=item,tag=mie_item_temp,tag=mie_item_inf_black_locked] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_black
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~2 ~ ~2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p2p2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~2 ~ ~1 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p2p1
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~2 ~ ~ if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p2p0
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~2 ~ ~-1 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p2m1
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~2 ~ ~-2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p2m2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~-2 ~ ~2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_m2p2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~-2 ~ ~1 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_m2p1
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~-2 ~ ~ if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_m2p0
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~-2 ~ ~-1 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_m2m1
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~-2 ~ ~-2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_m2m2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~1 ~ ~2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p1p2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~ ~ ~2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p0p2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~-1 ~ ~2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_m1p2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~1 ~ ~-2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p1m2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~ ~ ~-2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_p0m2
execute if entity @e[type=item,tag=mie_item_temp] at @s align xyz positioned ~.5 ~.3 ~.5 positioned ~-1 ~ ~-2 if entity @e[type=item,tag=mie_item_temp,distance=...4] run tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] add mie_inf_particle_m1m2
tag @e[type=area_effect_cloud,tag=mie_inf_particle_new] remove mie_inf_particle_new

# 注魔时播放声音
execute if entity @e[type=item,tag=mie_item_temp] run scoreboard players add @s mie_item_inf_s 1
execute if entity @e[type=item,tag=mie_item_temp] if score @s mie_item_inf_s matches 1 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ .2 0.6
execute if entity @e[type=item,tag=mie_item_temp] if score @s mie_item_inf_s matches 2 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ .2 0.7
execute if entity @e[type=item,tag=mie_item_temp] if score @s mie_item_inf_s matches 3 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ .2 0.8
execute if entity @e[type=item,tag=mie_item_temp] if score @s mie_item_inf_s matches 4 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ .2 0.9
execute if entity @e[type=item,tag=mie_item_temp] if score @s mie_item_inf_s matches 4 run scoreboard players set @s mie_item_inf_s 0
execute unless entity @e[type=item,tag=mie_item_temp] run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ .2 2

# 重置计时器
execute unless entity @e[type=item,tag=mie_item_temp] run scoreboard players add @s mie_item_inf_t 1
execute if entity @e[type=item,tag=mie_item_temp] run scoreboard players set @s mie_item_inf_t 1

# 清除tag
tag @e[type=item,tag=mie_item_temp] remove mie_item_temp


# 判定注魔成功
execute if score @s mie_eg_white matches 0 if score @s mie_eg_orange matches 0 if score @s mie_eg_magenta matches 0 if score @s mie_eg_l_blue matches 0 if score @s mie_eg_yellow matches 0 if score @s mie_eg_lime matches 0 if score @s mie_eg_pink matches 0 if score @s mie_eg_gray matches 0 if score @s mie_eg_l_gray matches 0 if score @s mie_eg_cyan matches 0 if score @s mie_eg_purple matches 0 if score @s mie_eg_blue matches 0 if score @s mie_eg_brown matches 0 if score @s mie_eg_green matches 0 if score @s mie_eg_red matches 0 if score @s mie_eg_black matches 0 at @s run function miecraft:crafting/infusion/process/success
# 判定注魔失败
execute if score @s mie_item_inf_t matches 60.. at @s run function miecraft:crafting/infusion/process/fail