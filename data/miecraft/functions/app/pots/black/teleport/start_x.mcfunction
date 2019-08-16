# 计算x轴距离
execute store result score @s mie_temp1 run scoreboard players get @s mie_black_x
execute store result score @s mie_temp2 run data get entity @s Pos[0] 1
scoreboard players operation @s mie_temp1 -= @s mie_temp2
# temp1距离变成正 temp2保存符号
scoreboard players set @s mie_temp2 1
execute if score @s mie_temp1 matches ..-1 run scoreboard players set @s mie_temp2 -1
scoreboard players operation @s mie_temp1 *= @s mie_temp2

# 开始递归x轴 temp3保存剩余次数 temp4保存数字2 初始化temp4temp5temp6
scoreboard players set @s mie_temp3 0
scoreboard players set @s mie_temp4 2
scoreboard players set @s mie_temp5 0
scoreboard players set @s mie_temp6 0
function miecraft:app/pots/black/teleport/recurse_x
