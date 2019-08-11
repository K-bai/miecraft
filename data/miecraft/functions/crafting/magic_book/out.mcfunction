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

# 改变新书动量
#summon minecraft:area_effect_cloud ^ ^ ^0.3 {Tags:["mie_mark"]}
#execute store result score @s mie_temp1 run data get entity @s Pos[0] 1000
#execute store result score @s mie_temp2 run data get entity @e[tag=mie_mark,limit=1] Pos[0] 1000
#scoreboard players operation @s mie_temp2 -= @s mie_temp1
#execute store result entity @e[tag=mie_item_new,limit=1] Motion[0] double 0.001 run scoreboard players get @s mie_temp2
#
#execute store result score @s mie_temp1 run data get entity @s Pos[1] 1000
#execute store result score @s mie_temp2 run data get entity @e[tag=mie_mark,limit=1] Pos[1] 1000
#scoreboard players operation @s mie_temp2 -= @s mie_temp1
#execute store result entity @e[tag=mie_item_new,limit=1] Motion[1] double 0.001 run scoreboard players get @s mie_temp2
#
#execute store result score @s mie_temp1 run data get entity @s Pos[2] 1000
#execute store result score @s mie_temp2 run data get entity @e[tag=mie_mark,limit=1] Pos[2] 1000
#scoreboard players operation @s mie_temp2 -= @s mie_temp1
#execute store result entity @e[tag=mie_item_new,limit=1] Motion[2] double 0.001 run scoreboard players get @s mie_temp2

# 删除tag
#kill @e[tag=mie_mark]
tag @e[tag=mie_item_new] remove mie_item_new