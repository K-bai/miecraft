# 增加计时
scoreboard players add @s mie_pot_ab_t 1
scoreboard players set @s[scores={mie_pot_ab_t=61..}] mie_pot_ab_t 0

# 特殊时刻生成粒子效果
execute if score @s mie_pot_ab_t matches 2 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["mie_sheep_ab_effect","mie_sheep_ab_effect_new"],Duration:200}
execute if score @s mie_pot_ab_t matches 10 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["mie_sheep_ab_effect","mie_sheep_ab_effect_new"],Duration:200}
execute if score @s mie_pot_ab_t matches 20 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["mie_sheep_ab_effect","mie_sheep_ab_effect_new"],Duration:200}
execute if score @s mie_pot_ab_t matches 30 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["mie_sheep_ab_effect","mie_sheep_ab_effect_new"],Duration:200}
execute if score @s mie_pot_ab_t matches 40 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["mie_sheep_ab_effect","mie_sheep_ab_effect_new"],Duration:200}
execute if score @s mie_pot_ab_t matches 50 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["mie_sheep_ab_effect","mie_sheep_ab_effect_new"],Duration:200}

execute if score @s mie_pot_ab_t matches 2 run playsound minecraft:entity.ender_dragon.flap ambient @a ~ ~ ~ 1 0.5
execute if score @s mie_pot_ab_t matches 10 run playsound minecraft:entity.ender_dragon.flap ambient @a ~ ~ ~ 1 0.5
execute if score @s mie_pot_ab_t matches 20 run playsound minecraft:entity.ender_dragon.flap ambient @a ~ ~ ~ 1 0.5
execute if score @s mie_pot_ab_t matches 30 run playsound minecraft:entity.ender_dragon.flap ambient @a ~ ~ ~ 1 0.5
execute if score @s mie_pot_ab_t matches 40 run playsound minecraft:entity.ender_dragon.flap ambient @a ~ ~ ~ 1 0.5
execute if score @s mie_pot_ab_t matches 50 run playsound minecraft:entity.ender_dragon.flap ambient @a ~ ~ ~ 1 0.5

# 初始化粒子效果
execute store result score @e[tag=mie_sheep_ab_effect_new,limit=1] mie_id run scoreboard players get @s mie_id
execute store result score @e[tag=mie_sheep_ab_effect_new,limit=1] mie_pot_color run data get entity @s Color

# 自身粒子效果
execute if entity @s[nbt={Color:0b}] run particle minecraft:dust 1 1 1 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:1b}] run particle minecraft:dust 0.941 0.463 0.075 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:2b}] run particle minecraft:dust 0.741 0.267 0.702 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:3b}] run particle minecraft:dust 0.227 0.686 0.851 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:4b}] run particle minecraft:dust 0.973 0.776 0.153 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:5b}] run particle minecraft:dust 0.439 0.725 0.098 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:6b}] run particle minecraft:dust 0.929 0.553 0.675 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:7b}] run particle minecraft:dust 0.243 0.267 0.278 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:8b}] run particle minecraft:dust 0.557 0.557 0.525 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:9b}] run particle minecraft:dust 0.082 0.537 0.569 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:10b}] run particle minecraft:dust 0.475 0.165 0.675 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:11b}] run particle minecraft:dust 0.208 0.224 0.616 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:12b}] run particle minecraft:dust 0.447 0.278 0.157 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:13b}] run particle minecraft:dust 0.329 0.427 0.106 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:14b}] run particle minecraft:dust 0.631 0.153 0.133 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1
execute if entity @s[nbt={Color:15b}] run particle minecraft:dust 0.078 0.082 0.098 2 ~ ~0.5 ~ 0.5 0.5 0.5 1 1

# 删除初始化tag
tag @e[tag=mie_sheep_ab_effect_new] remove mie_sheep_ab_effect_new