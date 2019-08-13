# 使用魔法罐吸羊羊
execute as @a[scores={mie_pot_use=1..},nbt={SelectedItem:{tag:{mie_id:3}}}] at @s run function miecraft:app/pots/absorption/main

# 使用魔法罐干别的
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,nbt={SelectedItem:{tag:{mie_id:3,mie_data1:3}}}] at @s run function miecraft:app/pots/light_blue/main
execute as @a[scores={mie_pot_use=1..},tag=!mie_ab_player,nbt={SelectedItem:{tag:{mie_id:3,mie_data1:11}}}] run function miecraft:app/pots/blue/main

# 清空标记
scoreboard players set @a[scores={mie_pot_use=1..}] mie_pot_use 0
tag @a[tag=mie_ab_player] remove mie_ab_player


# 结束吸收后加能量
execute as @e[scores={mie_pot_ab_t=60..}] at @s run function miecraft:app/pots/absorption/add_energy
# 吸收部分动画
execute as @e[scores={mie_pot_ab_t=1..}] at @s run function miecraft:app/pots/effect/absorption/sheep
# 吸收粒子效果
execute as @e[tag=mie_sheep_ab_effect] at @s run function miecraft:app/pots/effect/absorption/particle