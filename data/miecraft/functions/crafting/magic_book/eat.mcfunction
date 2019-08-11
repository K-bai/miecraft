# miecraft:crafting\magic_book\eat

# 寻找吃书羊羊
tag @e[type=minecraft:sheep,limit=1,sort=nearest,distance=..1.5] add mie_sheep_temp
scoreboard players add @e[tag=mie_sheep_temp] mie_eat_book_c 0
# 看看书里有没有那个颜色
execute as @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0}] store result score @s mie_temp1 run data get entity @s Color
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=0}] if entity @s[nbt={Item:{tag:{mie_data1:[0]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=1}] if entity @s[nbt={Item:{tag:{mie_data1:[1]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=2}] if entity @s[nbt={Item:{tag:{mie_data1:[2]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=3}] if entity @s[nbt={Item:{tag:{mie_data1:[3]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=4}] if entity @s[nbt={Item:{tag:{mie_data1:[4]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=5}] if entity @s[nbt={Item:{tag:{mie_data1:[5]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=6}] if entity @s[nbt={Item:{tag:{mie_data1:[6]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=7}] if entity @s[nbt={Item:{tag:{mie_data1:[7]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=8}] if entity @s[nbt={Item:{tag:{mie_data1:[8]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=9}] if entity @s[nbt={Item:{tag:{mie_data1:[9]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=10}] if entity @s[nbt={Item:{tag:{mie_data1:[10]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=11}] if entity @s[nbt={Item:{tag:{mie_data1:[11]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=12}] if entity @s[nbt={Item:{tag:{mie_data1:[12]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=13}] if entity @s[nbt={Item:{tag:{mie_data1:[13]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=14}] if entity @s[nbt={Item:{tag:{mie_data1:[14]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat
execute if entity @e[tag=mie_sheep_temp,limit=1,scores={mie_eat_book_c=0,mie_temp1=15}] if entity @s[nbt={Item:{tag:{mie_data1:[15]}}}] run tag @e[tag=mie_sheep_temp] add mie_sheep_no_eat


# 没有就给羊保存数据
tag @e[tag=mie_sheep_temp,tag=!mie_sheep_no_eat,scores={mie_eat_book_c=0}] add mie_sheep_eat
tag @e[tag=mie_sheep_no_eat] remove mie_sheep_no_eat

scoreboard players set @e[tag=mie_sheep_eat] mie_eat_book_t 0
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[0]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 1
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[1]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 2
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[2]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 4
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[3]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 8
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[4]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 16
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[5]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 32
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[6]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 64
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[7]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 128
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[8]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 256
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[9]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 512
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[10]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 1024
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[11]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 2048
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[12]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 4096
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[13]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 8192
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[14]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 16384
execute if entity @e[tag=mie_sheep_eat] if entity @s[nbt={Item:{tag:{mie_data1:[15]}}}] run scoreboard players add @e[tag=mie_sheep_eat] mie_eat_book_t 32768

# 删除书，开始吃
execute if entity @e[tag=mie_sheep_eat] run kill @s
scoreboard players set @e[tag=mie_sheep_eat] mie_eat_book_c 80
# 清除tag
tag @e[tag=mie_sheep_temp] remove mie_sheep_temp
tag @e[tag=mie_sheep_eat] remove mie_sheep_eat

