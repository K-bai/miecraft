# 放置方块
execute as @a[scores={mie_place_block=1..},nbt={SelectedItem:{tag:{mie_data1:"block"}}}] at @s run function mietwork:block/place_check
# 清空标记
scoreboard players set @a[scores={mie_place_block=1..}] mie_place_block 0

# 破坏方块
execute as @e[type=armor_stand,tag=mie_block] at @s unless block ~ ~ ~ #mietwork:block_base run function mietwork:block/remove
# 方块状态变化
execute as @e[type=armor_stand,tag=mie_block] at @s unless block ~ ~ ~ detector_rail[shape=north_south] run setblock ~ ~ ~ minecraft:detector_rail[shape=north_south]
