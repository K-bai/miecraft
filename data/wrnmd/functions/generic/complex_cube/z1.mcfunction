# 计算线面交点
## 平面方程 z=#box_z1
## 相交条件 #box_x0<=x<=#box_x1 #box_y0<=y<=#box_y1

execute store result score #target_z wrnmd_system run scoreboard players get #box_z1 wrnmd_system
function wrnmd:generic/calculate/z
execute if score #target_x wrnmd_system >= #box_x0 wrnmd_system if score #target_x wrnmd_system <= #box_x1 wrnmd_system if score #target_y wrnmd_system >= #box_y0 wrnmd_system if score #target_y wrnmd_system <= #box_y1 wrnmd_system run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_cube_edge","wrnmd_touch_mark_new","wrnmd_touch_z_plus"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:generic/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new