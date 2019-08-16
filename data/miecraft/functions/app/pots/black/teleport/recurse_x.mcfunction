# 位数-1
scoreboard players add @s mie_temp3 1
# 保存当前位数对应的值，距离移位
scoreboard players operation @s mie_temp5 = @s mie_temp1
scoreboard players operation @s mie_temp5 %= @s mie_temp4
scoreboard players operation @s mie_temp1 /= @s mie_temp4
# 以下是位移判断temp5=1表示这个位需要移动 temp3是当前位数 temp2是移动方向
execute if score @s mie_temp3 matches 1 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~1 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 2 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~2 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 3 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~4 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 4 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~8 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 5 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~16 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 6 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~32 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 7 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~64 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 8 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~128 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 9 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~256 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 10 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~512 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 11 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~1024 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 12 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~2048 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 13 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~4096 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 14 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~8192 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 15 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~16384 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 16 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~32768 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 17 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~65536 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 18 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~131072 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 19 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~262144 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 20 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~524288 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 21 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~1048576 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 22 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~2097152 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 23 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~4194304 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 24 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~8388608 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 25 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~16777216 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 26 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~33554432 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 27 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~67108864 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 28 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~134217728 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 29 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~268435456 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 30 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~536870912 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x

execute if score @s mie_temp3 matches 1 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-1 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 2 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-2 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 3 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-4 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 4 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-8 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 5 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-16 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 6 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-32 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 7 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-64 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 8 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-128 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 9 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-256 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 10 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-512 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 11 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-1024 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 12 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-2048 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 13 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-4096 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 14 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-8192 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 15 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-16384 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 16 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-32768 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 17 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-65536 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 18 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-131072 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 19 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-262144 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 20 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-524288 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 21 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-1048576 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 22 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-2097152 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 23 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-4194304 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 24 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-8388608 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 25 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-16777216 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 26 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-33554432 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 27 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-67108864 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 28 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-134217728 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 29 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-268435456 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
execute if score @s mie_temp3 matches 30 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~-536870912 ~ ~ run function miecraft:app/pots/black/teleport/recurse_x

# temp5=0不需要移动 temp3<=30防止回溯出错
execute if score @s mie_temp3 matches ..30 if score @s mie_temp5 matches 0 positioned ~ ~ ~ run function miecraft:app/pots/black/teleport/recurse_x
# 进入z
execute if score @s mie_temp3 matches 31 run function miecraft:app/pots/black/teleport/start_z
