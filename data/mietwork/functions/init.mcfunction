# 放置方块
scoreboard objectives add mie_place_block minecraft.used:minecraft.carrot_on_a_stick ["Mietwork放置方块"]
# 编号
scoreboard objectives add mie_block_id dummy ["Mietwork机器编号"]
scoreboard objectives add mie_pulse_id dummy ["Mietwork脉冲编号"]
scoreboard objectives add mie_channel_id dummy ["Mietwork能量通道编号"]
# 使用道具
scoreboard objectives add mie_nw_wch_use minecraft.used:minecraft.carrot_on_a_stick ["Miecraft使用扳手"]
# 下蹲
scoreboard objectives add mie_nw_wch_sneak minecraft.custom:minecraft.sneak_time ["Miecraft下蹲使用扳手"]


# 设置
scoreboard players set #settings_large_universal_energy_jar_max mie_system 500
