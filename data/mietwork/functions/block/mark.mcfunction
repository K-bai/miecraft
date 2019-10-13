# 生成编号
scoreboard players add #mie_block_id_max mie_system 1
scoreboard players set @s mie_block_id 0
scoreboard players operation @s mie_block_id = #mie_block_id_max mie_system

# 生成标记
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy_jar"}}]}] run tag @s add mie_block_large_universal_energy_jar
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{mie_id:"energy_emitter"}}]}] run tag @s add mie_block_energy_emitter
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{mie_id:"energy_receiver"}}]}] run tag @s add mie_block_energy_receiver

# 生成特殊标记
tag @s[tag=mie_block_large_universal_energy_jar] add mie_block_type_own_energy
tag @s[tag=mie_block_large_universal_energy_jar] add mie_block_type_need_energy

