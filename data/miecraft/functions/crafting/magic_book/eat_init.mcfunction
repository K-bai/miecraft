# miecraft:crafting\magic_book\eat_init

# 寻找吃书羊羊
tag @e[type=minecraft:sheep,limit=1,sort=nearest,distance=..1.5] add mie_sheep_temp
scoreboard players add @e[tag=mie_sheep_temp] mie_eat_book_c 0
# 没在吃的羊羊初始化 删了原来的书
execute if score @e[tag=mie_sheep_temp,limit=1] mie_eat_book_c matches 0 run kill @s
scoreboard players set @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0}] mie_eat_book_t 0
scoreboard players set @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0}] mie_eat_book_c 80


# 删除tag
tag @e[tag=mie_sheep_temp] remove mie_sheep_temp
