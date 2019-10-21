# 脉冲的机器编号存目标接收器机器编号
# 脉冲的脉冲编号存发射器机器编号

# 标记自己
tag @s add mie_pulse_temp
# 查找相同发射器和接收器
execute as @e[tag=mie_block_energy_receiver] if score @s mie_block_id = @e[tag=mie_pulse_temp,limit=1] mie_block_id run tag @s add mie_block_working
execute as @e[tag=mie_block_energy_emitter] if score @s mie_block_id = @e[tag=mie_pulse_temp,limit=1] mie_pulse_id run tag @s add mie_block_working
# 清除标记
tag @s remove mie_pulse_temp
