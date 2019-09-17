# 提取页码
execute store result score @s mie_temp1 run data get block ~ ~ ~ Book.tag.mie_data2[0]
# 判断大小跳转页面，删除记录
execute if score @s mie_temp1 matches 1.. run data modify block ~ ~ ~ Page set from block ~ ~ ~ Book.tag.mie_data2[0]
execute if score @s mie_temp1 matches 1.. run data modify block ~ ~ ~ Book.tag.mie_data3 set from block ~ ~ ~ Book.tag.mie_data2[0]
execute if score @s mie_temp1 matches 0 run data modify block ~ ~ ~ Page set value 1
execute if score @s mie_temp1 matches 0 run data modify block ~ ~ ~ Book.tag.mie_data3 set value 1
execute if score @s mie_temp1 matches 0.. run data remove block ~ ~ ~ Book.tag.mie_data2[0]
