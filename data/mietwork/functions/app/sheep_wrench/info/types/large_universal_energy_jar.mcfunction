# 存储信息
execute store result score #var0 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_white
execute store result score #var1 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_orange
execute store result score #var2 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_magenta
execute store result score #var3 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_l_blue
execute store result score #var4 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_yellow
execute store result score #var5 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_lime
execute store result score #var6 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_pink
execute store result score #var7 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_gray
execute store result score #var8 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_l_gray
execute store result score #var9 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_cyan
execute store result score #var10 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_purple
execute store result score #var11 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_blue
execute store result score #var12 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_brown
execute store result score #var13 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_green
execute store result score #var14 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_red
execute store result score #var15 mie_system run scoreboard players get @e[tag=mie_block_large_universal_energy_jar,distance=...1,limit=1] mie_eg_black
scoreboard players set #var16 mie_system 0
scoreboard players operation #var16 mie_system += #var0 mie_system
scoreboard players operation #var16 mie_system += #var1 mie_system
scoreboard players operation #var16 mie_system += #var2 mie_system
scoreboard players operation #var16 mie_system += #var3 mie_system
scoreboard players operation #var16 mie_system += #var4 mie_system
scoreboard players operation #var16 mie_system += #var5 mie_system
scoreboard players operation #var16 mie_system += #var6 mie_system
scoreboard players operation #var16 mie_system += #var7 mie_system
scoreboard players operation #var16 mie_system += #var8 mie_system
scoreboard players operation #var16 mie_system += #var9 mie_system
scoreboard players operation #var16 mie_system += #var10 mie_system
scoreboard players operation #var16 mie_system += #var11 mie_system
scoreboard players operation #var16 mie_system += #var12 mie_system
scoreboard players operation #var16 mie_system += #var13 mie_system
scoreboard players operation #var16 mie_system += #var14 mie_system
scoreboard players operation #var16 mie_system += #var15 mie_system



tellraw @s {"translate":"info.mie.wrench.large_universal_energy_jar.title"}
tellraw @s {"translate":"info.mie.wrench.large_universal_energy_jar.msg1", "with":[{"score":{"name":"#var16","objective":"mie_system"}}]}
tellraw @s {"translate":"info.mie.wrench.large_universal_energy_jar.msg2", "with":[{"score":{"name":"#var0","objective":"mie_system"}},{"score":{"name":"#var1","objective":"mie_system"}},{"score":{"name":"#var2","objective":"mie_system"}},{"score":{"name":"#var3","objective":"mie_system"}},{"score":{"name":"#var4","objective":"mie_system"}},{"score":{"name":"#var5","objective":"mie_system"}},{"score":{"name":"#var6","objective":"mie_system"}},{"score":{"name":"#var7","objective":"mie_system"}},{"score":{"name":"#var8","objective":"mie_system"}},{"score":{"name":"#var9","objective":"mie_system"}},{"score":{"name":"#var10","objective":"mie_system"}},{"score":{"name":"#var11","objective":"mie_system"}},{"score":{"name":"#var12","objective":"mie_system"}},{"score":{"name":"#var13","objective":"mie_system"}},{"score":{"name":"#var14","objective":"mie_system"}},{"score":{"name":"#var15","objective":"mie_system"}}]}
