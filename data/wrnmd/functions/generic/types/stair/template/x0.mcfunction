# 计算线面交点
## 平面方程 x=0
## 相交条件 0<=y<=1000 0<=z<=1000

scoreboard players set #target_x wrnmd_system 0
function wrnmd:generic/calculate/x
execute if score #target_y wrnmd_system matches 0..500 if score #target_z wrnmd_system matches 0..500 run tag @s add wrnmd_touch_x0_00
execute if score #target_y wrnmd_system matches 0..500 if score #target_z wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_x0_01
execute if score #target_y wrnmd_system matches 500..1000 if score #target_z wrnmd_system matches 0..500 run tag @s add wrnmd_touch_x0_10
execute if score #target_y wrnmd_system matches 500..1000 if score #target_z wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_x0_11
