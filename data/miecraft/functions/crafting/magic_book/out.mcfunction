# miecraft:crafting\magic_book\out

# 清除吃书过程
scoreboard players set @s mie_eat_book_c 0
# 加上自己的颜色
execute if entity @s[nbt={Color:0b}] run scoreboard players set @s mie_eg_white 1
execute if entity @s[nbt={Color:1b}] run scoreboard players set @s mie_eg_orange 1
execute if entity @s[nbt={Color:2b}] run scoreboard players set @s mie_eg_magenta 1
execute if entity @s[nbt={Color:3b}] run scoreboard players set @s mie_eg_l_blue 1
execute if entity @s[nbt={Color:4b}] run scoreboard players set @s mie_eg_yellow 1
execute if entity @s[nbt={Color:5b}] run scoreboard players set @s mie_eg_lime 1
execute if entity @s[nbt={Color:6b}] run scoreboard players set @s mie_eg_pink 1
execute if entity @s[nbt={Color:7b}] run scoreboard players set @s mie_eg_gray 1
execute if entity @s[nbt={Color:8b}] run scoreboard players set @s mie_eg_l_gray 1
execute if entity @s[nbt={Color:9b}] run scoreboard players set @s mie_eg_cyan 1
execute if entity @s[nbt={Color:10b}] run scoreboard players set @s mie_eg_purple 1
execute if entity @s[nbt={Color:11b}] run scoreboard players set @s mie_eg_blue 1
execute if entity @s[nbt={Color:12b}] run scoreboard players set @s mie_eg_brown 1
execute if entity @s[nbt={Color:13b}] run scoreboard players set @s mie_eg_green 1
execute if entity @s[nbt={Color:14b}] run scoreboard players set @s mie_eg_red 1
execute if entity @s[nbt={Color:15b}] run scoreboard players set @s mie_eg_black 1

# 检测是否完成一本书
execute if score @s mie_eg_white matches 1 if score @s mie_eg_orange matches 1 if score @s mie_eg_magenta matches 1 if score @s mie_eg_l_blue matches 1 if score @s mie_eg_yellow matches 1 if score @s mie_eg_lime matches 1 if score @s mie_eg_pink matches 1 if score @s mie_eg_gray matches 1 if score @s mie_eg_l_gray matches 1 if score @s mie_eg_cyan matches 1 if score @s mie_eg_purple matches 1 if score @s mie_eg_blue matches 1 if score @s mie_eg_brown matches 1 if score @s mie_eg_green matches 1 if score @s mie_eg_red matches 1 if score @s mie_eg_black matches 1 run tag @s add mie_sheep_finish
execute unless entity @s[tag=mie_sheep_finish] at @s anchored eyes positioned ^ ^ ^ run function miecraft:crafting/magic_book/add_book_info
execute if entity @s[tag=mie_sheep_finish] at @s anchored eyes positioned ^ ^ ^ run loot spawn ~ ~ ~ loot miecraft:items/books/magic_book
tag @s[tag=mie_sheep_finish] remove mie_sheep_finish
