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

# 生成附属
execute if entity @s[tag=mie_block_large_universal_energy_jar] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:["mie_block","mie_block_large_universal_energy_jar_sub"],Small:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}

# 生成基座
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:["mie_block","mie_block_base","mie_block_base_new"],Small:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,NoGravity:1}
loot replace entity @e[type=armor_stand,tag=mie_block_base_new] armor.head loot mietwork:blocks/base
tag @e[type=armor_stand,tag=mie_block_base_new] remove mie_block_base_new

# 清空能量计分板
scoreboard players set @s mie_eg_white 0
scoreboard players set @s mie_eg_orange 0
scoreboard players set @s mie_eg_magenta 0
scoreboard players set @s mie_eg_l_blue 0
scoreboard players set @s mie_eg_yellow 0
scoreboard players set @s mie_eg_lime 0
scoreboard players set @s mie_eg_pink 0
scoreboard players set @s mie_eg_gray 0
scoreboard players set @s mie_eg_l_gray 0
scoreboard players set @s mie_eg_cyan 0
scoreboard players set @s mie_eg_purple 0
scoreboard players set @s mie_eg_blue 0
scoreboard players set @s mie_eg_brown 0
scoreboard players set @s mie_eg_green 0
scoreboard players set @s mie_eg_red 0
scoreboard players set @s mie_eg_black 0
scoreboard players set @s mie_eg_white_t 0
scoreboard players set @s mie_eg_orange_t 0
scoreboard players set @s mie_eg_magenta_t 0
scoreboard players set @s mie_eg_l_blue_t 0
scoreboard players set @s mie_eg_yellow_t 0
scoreboard players set @s mie_eg_lime_t 0
scoreboard players set @s mie_eg_pink_t 0
scoreboard players set @s mie_eg_gray_t 0
scoreboard players set @s mie_eg_l_gray_t 0
scoreboard players set @s mie_eg_cyan_t 0
scoreboard players set @s mie_eg_purple_t 0
scoreboard players set @s mie_eg_blue_t 0
scoreboard players set @s mie_eg_brown_t 0
scoreboard players set @s mie_eg_green_t 0
scoreboard players set @s mie_eg_red_t 0
scoreboard players set @s mie_eg_black_t 0