# 位数-1
scoreboard players add @s mie_temp3 1
# 保存当前位数对应的值，距离移位
scoreboard players operation @s mie_temp5 = @s mie_temp1
scoreboard players operation @s mie_temp5 %= @s mie_temp4
scoreboard players operation @s mie_temp1 /= @s mie_temp4
# 以下是位移判断temp5=1表示这个位需要移动 temp3是当前位数 temp2是移动方向
execute if score @s mie_temp3 matches 1 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~1 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 2 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~2 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 3 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~4 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 4 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~8 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 5 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~16 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 6 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~32 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 7 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~64 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 8 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches 1 positioned ~ ~128 ~ run function miecraft:app/pots/black/teleport/recurse_y

execute if score @s mie_temp3 matches 1 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-1 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 2 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-2 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 3 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-4 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 4 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-8 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 5 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-16 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 6 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-32 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 7 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-64 ~ run function miecraft:app/pots/black/teleport/recurse_y
execute if score @s mie_temp3 matches 8 if score @s mie_temp5 matches 1 if score @s mie_temp2 matches -1 positioned ~ ~-128 ~ run function miecraft:app/pots/black/teleport/recurse_y

# temp5=0不需要移动 temp3<=30防止回溯出错
execute if score @s mie_temp3 matches ..8 if score @s mie_temp5 matches 0 positioned ~ ~ ~ run function miecraft:app/pots/black/teleport/recurse_y
# 传送
execute if score @s mie_temp3 matches 9 run tp @s ~ ~ ~
execute if score @s mie_temp3 matches 9 align xyz run playsound minecraft:entity.enderman.teleport ambient @a ~.5 ~.5 ~.5
execute if score @s mie_temp3 matches 9 align xyz run particle minecraft:dust 0.078 0.082 0.098 1 ~.5 ~.5 ~.5 0.3 0.3 0.3 1 100

scoreboard players set @s mie_temp3 999

