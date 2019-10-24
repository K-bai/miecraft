# 使用魔法罐吸羊羊
execute as @a[scores={mie_pot_use=1..},nbt={SelectedItem:{tag:{mie_id:"pot"}}}] at @s run function miecraft:app/pots/absorption/main

# 使用魔法罐填充方块
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,nbt={SelectedItem:{tag:{mie_id:"pot"}}}] at @s run function miecraft:app/pots/fill_jar/main

# 使用魔法罐干别的
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:1}}}] run function miecraft:app/pots/orange/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:2}}}] run function miecraft:app/pots/magenta/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:3}}}] run function miecraft:app/pots/light_blue/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:4}}}] run function miecraft:app/pots/yellow/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:5}}}] run function miecraft:app/pots/lime/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:6}}}] run function miecraft:app/pots/pink/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:7}}}] run function miecraft:app/pots/gray/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:9}}}] run function miecraft:app/pots/cyan/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:10}}}] run function miecraft:app/pots/purple/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:11}}}] run function miecraft:app/pots/blue/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:12}}}] run function miecraft:app/pots/brown/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:13}}}] run function miecraft:app/pots/green/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:14}}}] run function miecraft:app/pots/red/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,tag=!mie_fill_player,nbt={SelectedItem:{tag:{mie_id:"pot",mie_data1:15}}}] run function miecraft:app/pots/black/main




# 清空标记
scoreboard players set @a[scores={mie_pot_use=1..}] mie_pot_use 0
tag @a[tag=mie_ab_player] remove mie_ab_player
tag @a[tag=mie_fill_player] remove mie_fill_player


# 结束吸收后加能量
execute as @e[scores={mie_pot_ab_t=60..}] at @s run function miecraft:app/pots/absorption/add_energy
# 吸收部分动画
execute as @e[scores={mie_pot_ab_t=1..}] at @s run function miecraft:app/pots/effect/absorption/sheep
# 吸收粒子效果
execute as @e[tag=mie_sheep_ab_effect] at @s run function miecraft:app/pots/effect/absorption/particle


# 棕、粉色药水效果
scoreboard players add @e[tag=mie_threw_potion] mie_potion_t 1
execute as @e[tag=mie_threw_potion,scores={mie_potion_t=2}] run data merge entity @s {NoGravity:0}
execute as @e[tag=mie_threw_potion,scores={mie_potion_t=2}] store result entity @s Motion[0] double 0.001 run scoreboard players get @s mie_temp1
execute as @e[tag=mie_threw_potion,scores={mie_potion_t=2}] store result entity @s Motion[1] double 0.001 run scoreboard players get @s mie_temp2
execute as @e[tag=mie_threw_potion,scores={mie_potion_t=2}] store result entity @s Motion[2] double 0.001 run scoreboard players get @s mie_temp3

# 绿色砍树效果
execute as @e[tag=mie_green_log,scores={mie_green_t=0}] at @s if block ~ ~ ~ #miecraft:green_chop run setblock ~ ~ ~ air destroy
kill @e[tag=mie_green_log,scores={mie_green_t=0}]
scoreboard players remove @e[tag=mie_green_log,scores={mie_green_t=1..}] mie_green_t 1


# 粒子效果
execute as @e[scores={mie_helix_red=1..}] at @s positioned ~ ~-.5 ~ run function miecraft:app/pots/effect/helix/red
scoreboard players add @e[scores={mie_helix_red=1..}] mie_helix_red 1
execute as @e[scores={mie_helix_red=40}] at @s run function miecraft:app/pots/red/smelt
kill @e[scores={mie_helix_red=40..}]

execute as @e[scores={mie_helix_purple=1..}] at @s positioned ~ ~-.5 ~ run function miecraft:app/pots/effect/helix/purple
scoreboard players add @e[scores={mie_helix_purple=1..}] mie_helix_purple 1
execute as @e[scores={mie_helix_purple=40}] at @s run function miecraft:app/pots/purple/copy
kill @e[scores={mie_helix_purple=40..}]

execute as @e[scores={mie_helix_black=1..}] at @s run function miecraft:app/pots/effect/helix/black
scoreboard players add @e[scores={mie_helix_black=1..}] mie_helix_black 1
execute as @e[scores={mie_helix_black=40}] at @s run function miecraft:app/pots/black/teleport/fucking_easy_way
scoreboard players set @e[scores={mie_helix_black=40..}] mie_helix_black 0