tellraw @s {"translate":"info.mie.wrench.energy_receiver.title"}
execute if entity @e[tag=mie_block_energy_receiver,distance=...1,scores={mie_channel_id=0}] run tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg1.all"}
execute if entity @e[tag=mie_block_energy_receiver,distance=...1,scores={mie_channel_id=1}] run tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg1.coal"}
execute if entity @e[tag=mie_block_energy_receiver,distance=...1,scores={mie_channel_id=2}] run tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg1.iron"}
execute if entity @e[tag=mie_block_energy_receiver,distance=...1,scores={mie_channel_id=3}] run tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg1.gold"}
execute if entity @e[tag=mie_block_energy_receiver,distance=...1,scores={mie_channel_id=4}] run tellraw @s {"translate":"info.mie.wrench.energy_receivermsg1.redstone"}
execute if entity @e[tag=mie_block_energy_receiver,distance=...1,scores={mie_channel_id=5}] run tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg1.lapis"}
execute if entity @e[tag=mie_block_energy_receiver,distance=...1,scores={mie_channel_id=6}] run tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg1.glowstone"}
tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg2"}
tellraw @s {"translate":"info.mie.wrench.energy_receiver.msg3"}
