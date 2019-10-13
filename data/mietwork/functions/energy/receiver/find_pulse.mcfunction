# 标记自己
tag @s add mie_block_temp
# 查找相同子弹
execute as @e[tag=mie_pulse] if score @s mie_pulse_id = @e[type=armor_stand,tag=mie_block_temp,limit=1] mie_block_id run tag @s add mie_pulse_temp
# 减去需求
execute if entity @e[tag=mie_pulse_temp,tag=mie_pulse_white] 

# 删除标记
tag @e[tag=mie_pulse_temp] remove mie_pulse_temp
tag @s remove mie_block_temp