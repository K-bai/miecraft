# 放置方块
execute as @a[scores={mie_place_block=1..},nbt={SelectedItem:{tag:{mie_data1:"block"}}}] at @s run function mietwork:block/place_check
# 清空标记
scoreboard players set @a[scores={mie_place_block=1..}] mie_place_block 0


# 破坏方块
execute as @e[type=armor_stand,tag=mie_block] at @s unless block ~ ~ ~ light_gray_carpet run function mietwork:block/remove