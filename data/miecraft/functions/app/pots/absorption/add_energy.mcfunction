# 标记自己
tag @s add mie_ab_energy_temp
# 查找目标
execute as @a if score @s mie_id = @e[tag=mie_ab_energy_temp,limit=1] mie_id run tag @s add mie_ab_energy_target
# 加能量
execute as @a[tag=mie_ab_energy_target] run function miecraft:sheep_energy/reset_score
execute if entity @s[nbt={Color:0b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_white 10
execute if entity @s[nbt={Color:1b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_orange 10
execute if entity @s[nbt={Color:2b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_magenta 15
execute if entity @s[nbt={Color:3b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_l_blue 10
execute if entity @s[nbt={Color:4b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_yellow 10
execute if entity @s[nbt={Color:5b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_lime 10
execute if entity @s[nbt={Color:6b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_pink 10
execute if entity @s[nbt={Color:7b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_gray 10
execute if entity @s[nbt={Color:8b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_l_gray 5
execute if entity @s[nbt={Color:9b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_cyan 10
execute if entity @s[nbt={Color:10b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_purple 2
execute if entity @s[nbt={Color:11b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_blue 10
execute if entity @s[nbt={Color:12b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_brown 10
execute if entity @s[nbt={Color:13b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_green 10
execute if entity @s[nbt={Color:14b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_red 10
execute if entity @s[nbt={Color:15b}] run scoreboard players set @a[tag=mie_ab_energy_target] mie_eg_black 5
execute as @a[tag=mie_ab_energy_target] run function miecraft:sheep_energy/score_to_item/add

# 音效
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 1 1
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 1 2
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 1 0.5
# 杀羊
kill @s
# 删除tag
tag @s remove mie_ab_energy_temp
tag @a[tag=mie_ab_energy_target] remove mie_ab_energy_target