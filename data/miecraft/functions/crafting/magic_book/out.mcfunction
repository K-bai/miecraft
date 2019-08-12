# miecraft:crafting\magic_book\out

# 清除吃书过程
scoreboard players set @s mie_eat_book_c 0
# 保存自己的羊类型
execute store result score @s mie_temp1 run data get entity @s Color
# 计算自己颜色移位
scoreboard players set @s mie_temp2 1
scoreboard players set @s mie_temp3 2
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
execute if score @s mie_temp1 matches 1.. run scoreboard players operation @s mie_temp2 *= @s mie_temp3
execute if score @s mie_temp1 matches 1.. run scoreboard players remove @s mie_temp1 1
# 把自己的颜色加到书的颜色里
scoreboard players operation @s mie_eat_book_t += @s mie_temp2


# 生成新书
execute unless score @s mie_eat_book_t matches 65535 at @s anchored eyes positioned ^ ^ ^1 run function miecraft:crafting/magic_book/add_book_info
execute if score @s mie_eat_book_t matches 65535 at @s anchored eyes positioned ^ ^ ^1 run function miecraft:items/book

# 删除tag
tag @e[tag=mie_item_new] remove mie_item_new