# 计算能量
function miecraft:sheep_energy/item_to_score
# 判断方块
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:0}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ white_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:1}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ orange_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:2}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ magenta_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:3}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ light_blue_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:4}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ yellow_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:5}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ lime_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:6}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ pink_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:7}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ gray_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:8}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ light_gray_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:9}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ cyan_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:10}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ purple_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:11}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ blue_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:12}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ brown_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:13}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ green_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:14}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ red_wool replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:15}}}] if block ~ ~ ~ #minecraft:wool run setblock ~ ~ ~ black_wool replace

execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:0}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ white_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:1}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ orange_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:2}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ magenta_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:3}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ light_blue_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:4}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ yellow_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:5}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ lime_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:6}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ pink_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:7}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ gray_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:8}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ light_gray_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:9}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ cyan_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:10}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ purple_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:11}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ blue_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:12}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ brown_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:13}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ green_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:14}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ red_concrete replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:15}}}] if block ~ ~ ~ #minecraft:concrete run setblock ~ ~ ~ black_concrete replace

execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:0}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ white_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:1}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ orange_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:2}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ magenta_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:3}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ light_blue_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:4}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ yellow_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:5}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ lime_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:6}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ pink_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:7}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ gray_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:8}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ light_gray_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:9}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ cyan_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:10}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ purple_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:11}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ blue_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:12}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ brown_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:13}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ green_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:14}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ red_concrete_powder replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:15}}}] if block ~ ~ ~ #minecraft:concrete_powder run setblock ~ ~ ~ black_concrete_powder replace

execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:0}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ white_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:1}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ orange_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:2}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ magenta_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:3}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ light_blue_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:4}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ yellow_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:5}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ lime_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:6}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ pink_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:7}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ gray_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:8}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ light_gray_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:9}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ cyan_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:10}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ purple_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:11}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ blue_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:12}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ brown_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:13}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ green_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:14}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ red_glazed_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:15}}}] if block ~ ~ ~ #minecraft:glazed_terracotta run setblock ~ ~ ~ black_glazed_terracotta replace

execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:0}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ white_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:1}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ orange_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:2}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ magenta_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:3}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ light_blue_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:4}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ yellow_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:5}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ lime_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:6}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ pink_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:7}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ gray_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:8}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ light_gray_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:9}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ cyan_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:10}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ purple_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:11}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ blue_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:12}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ brown_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:13}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ green_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:14}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ red_terracotta replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:15}}}] if block ~ ~ ~ #minecraft:terracotta run setblock ~ ~ ~ black_terracotta replace

execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:0}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ white_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:1}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ orange_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:2}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ magenta_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:3}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ light_blue_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:4}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ yellow_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:5}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ lime_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:6}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ pink_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:7}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ gray_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:8}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ light_gray_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:9}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ cyan_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:10}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ purple_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:11}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ blue_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:12}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ brown_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:13}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ green_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:14}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ red_stained_glass replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:15}}}] if block ~ ~ ~ #minecraft:stained_glass run setblock ~ ~ ~ black_stained_glass replace

execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:0}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ white_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:1}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ orange_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:2}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ magenta_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:3}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ light_blue_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:4}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ yellow_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:5}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ lime_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:6}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ pink_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:7}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ gray_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:8}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ light_gray_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:9}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ cyan_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:10}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ purple_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:11}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ blue_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:12}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ brown_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:13}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ green_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:14}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ red_carpet replace
execute if entity @s[scores={mie_eg_l_blue=1..},nbt={SelectedItem:{tag:{mie_data3:15}}}] if block ~ ~ ~ #minecraft:carpets run setblock ~ ~ ~ black_carpet replace

# 音效
execute if score @s mie_eg_l_blue matches 1.. run playsound minecraft:entity.slime.squish ambient @a ~ ~ ~ 1 1.5
# 粒子
execute if score @s mie_eg_l_blue matches 1.. align xyz run particle minecraft:block light_blue_wool ~.5 ~.5 ~.5 .2 .2 .2 1 100

# 消耗能量
function miecraft:sheep_energy/reset_score
scoreboard players set @s mie_eg_l_blue 1
function miecraft:sheep_energy/score_to_item/remove