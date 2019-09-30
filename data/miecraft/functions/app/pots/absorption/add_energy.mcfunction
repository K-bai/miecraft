# 标记自己
tag @s add mie_ab_energy_temp
# 查找目标
execute as @a if score @s mie_id = @e[tag=mie_ab_energy_temp,limit=1] mie_id run tag @s add mie_ab_energy_target
# 加能量
execute as @a[tag=mie_ab_energy_target] run function miecraft:sheep_energy/reset_score
execute if entity @s[nbt={Color:0b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_white 10
execute if entity @s[nbt={Color:1b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_orange 10
execute if entity @s[nbt={Color:2b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_magenta 15
execute if entity @s[nbt={Color:3b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_l_blue 10
execute if entity @s[nbt={Color:4b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_yellow 10
execute if entity @s[nbt={Color:5b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_lime 10
execute if entity @s[nbt={Color:6b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_pink 10
execute if entity @s[nbt={Color:7b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_gray 10
execute if entity @s[nbt={Color:8b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_l_gray 5
execute if entity @s[nbt={Color:9b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_cyan 10
execute if entity @s[nbt={Color:10b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_purple 2
execute if entity @s[nbt={Color:11b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_blue 10
execute if entity @s[nbt={Color:12b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_brown 10
execute if entity @s[nbt={Color:13b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_green 10
execute if entity @s[nbt={Color:14b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_red 10
execute if entity @s[nbt={Color:15b}] run scoreboard players set @p[tag=mie_ab_energy_target] mie_eg_black 5
# 心情因素
scoreboard players set @s mie_temp1 10000
scoreboard players set @s[scores={mie_eco_mood=10000..}] mie_eco_mood 10000
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_white *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_orange *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_magenta *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_l_blue *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_yellow *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_lime *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_pink *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_gray *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_l_gray *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_cyan *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_purple *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_blue *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_brown *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_green *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_red *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_black *= @s mie_eco_mood
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_white /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_orange /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_magenta /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_l_blue /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_yellow /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_lime /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_pink /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_gray /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_l_gray /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_cyan /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_purple /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_blue /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_brown /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_green /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_red /= @s mie_temp1
scoreboard players operation @p[tag=mie_ab_energy_target] mie_eg_black /= @s mie_temp1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:0b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_white 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:1b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_orange 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:2b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_magenta 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:3b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_l_blue 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:4b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_yellow 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:5b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_lime 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:6b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_pink 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:7b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_gray 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:8b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_l_gray 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:9b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_cyan 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:10b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_purple 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:11b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_blue 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:12b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_brown 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:13b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_green 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:14b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_red 1
execute unless score @s mie_eco_mood matches 10000 if entity @s[nbt={Color:15b}] run scoreboard players add @p[tag=mie_ab_energy_target] mie_eg_black 1
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