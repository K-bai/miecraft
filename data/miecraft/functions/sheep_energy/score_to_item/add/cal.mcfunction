# 设置最大值
execute store result score @s mie_temp5 run scoreboard players get @s mie_temp4
# 算最大可加入值 存入mie_temp4
scoreboard players operation @s mie_temp4 -= @s mie_temp3
# 计算加入值-未溢出
execute unless score @s mie_temp4 < @s mie_temp6 run scoreboard players operation @s mie_temp3 += @s mie_temp6
execute unless score @s mie_temp4 < @s mie_temp6 run scoreboard players set @s mie_temp6 0
# 计算加入值-溢出
execute if score @s mie_temp4 < @s mie_temp6 run scoreboard players operation @s mie_temp3 = @s mie_temp5
execute if score @s mie_temp4 < @s mie_temp6 run scoreboard players operation @s mie_temp6 -= @s mie_temp4
