# 每个方块出不同物品
execute if entity @s[tag=mie_block_large_universal_energy_jar] run loot spawn ~ ~ ~ loot mietwork:blocks/large_universal_energy_jar
execute if entity @s[tag=mie_block_energy_emitter] run loot spawn ~ ~ ~ loot mietwork:blocks/energy_emitter
execute if entity @s[tag=mie_block_energy_receiver] run loot spawn ~ ~ ~ loot mietwork:blocks/energy_receiver

# 清除掉落物和自身
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_carpet",Count:1b}},distance=..2,limit=1,sort=nearest]
kill @s