# 保存上一刻和这一刻页码
execute store result score @s mie_temp1 run data get block ~ ~ ~ Book.tag.mie_data3
execute store result score @s mie_temp2 run data get block ~ ~ ~ Page
# 计算上一刻和这一刻的差
scoreboard players operation @s mie_temp2 -= @s mie_temp1
execute unless score @s mie_temp2 matches -1..1 run data modify block ~ ~ ~ Book.tag.mie_data2 prepend from block ~ ~ ~ Book.tag.mie_data3

# 修改上一刻页码
data modify block ~ ~ ~ Book.tag.mie_data3 set from block ~ ~ ~ Page
