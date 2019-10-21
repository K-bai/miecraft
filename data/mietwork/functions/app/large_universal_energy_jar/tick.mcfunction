# 计算能量总量
scoreboard players set @s mie_temp1 0
scoreboard players operation @s mie_temp1 += @s mie_eg_white
scoreboard players operation @s mie_temp1 += @s mie_eg_orange
scoreboard players operation @s mie_temp1 += @s mie_eg_magenta
scoreboard players operation @s mie_temp1 += @s mie_eg_l_blue
scoreboard players operation @s mie_temp1 += @s mie_eg_yellow
scoreboard players operation @s mie_temp1 += @s mie_eg_lime
scoreboard players operation @s mie_temp1 += @s mie_eg_pink
scoreboard players operation @s mie_temp1 += @s mie_eg_gray
scoreboard players operation @s mie_temp1 += @s mie_eg_l_gray
scoreboard players operation @s mie_temp1 += @s mie_eg_cyan
scoreboard players operation @s mie_temp1 += @s mie_eg_purple
scoreboard players operation @s mie_temp1 += @s mie_eg_blue
scoreboard players operation @s mie_temp1 += @s mie_eg_brown
scoreboard players operation @s mie_temp1 += @s mie_eg_green
scoreboard players operation @s mie_temp1 += @s mie_eg_red
scoreboard players operation @s mie_temp1 += @s mie_eg_black
# 显示效果
execute at @s if score @s mie_temp1 matches 0 as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] if data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy"}}]} run replaceitem entity @s armor.head air
execute at @s if score @s mie_temp1 matches 1..71 as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] unless data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy",mie_data2:"energy1"}}]} run loot replace entity @s armor.head loot mietwork:blocks/large_universal_energy/1
execute at @s if score @s mie_temp1 matches 72..142 as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] unless data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy",mie_data2:"energy2"}}]} run loot replace entity @s armor.head loot mietwork:blocks/large_universal_energy/2
execute at @s if score @s mie_temp1 matches 143..213 as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] unless data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy",mie_data2:"energy3"}}]} run loot replace entity @s armor.head loot mietwork:blocks/large_universal_energy/3
execute at @s if score @s mie_temp1 matches 214..284 as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] unless data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy",mie_data2:"energy4"}}]} run loot replace entity @s armor.head loot mietwork:blocks/large_universal_energy/4
execute at @s if score @s mie_temp1 matches 285..355 as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] unless data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy",mie_data2:"energy5"}}]} run loot replace entity @s armor.head loot mietwork:blocks/large_universal_energy/5
execute at @s if score @s mie_temp1 matches 356..426 as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] unless data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy",mie_data2:"energy6"}}]} run loot replace entity @s armor.head loot mietwork:blocks/large_universal_energy/6
execute at @s if score @s mie_temp1 matches 427.. as @e[tag=mie_block_large_universal_energy_jar_sub,distance=...1,limit=1] unless data entity @s {ArmorItems:[{},{},{},{tag:{mie_id:"large_universal_energy",mie_data2:"energy7"}}]} run loot replace entity @s armor.head loot mietwork:blocks/large_universal_energy/7