# 使用魔法罐
execute as @a[scores={mie_pot_use=1..},nbt={SelectedItem:{tag:{mie_id:3,mie_data1:0}}}] run function miecraft:app/pots/white/main

scoreboard players set @a[scores={mie_pot_use=1..}] mie_pot_use 0


# 结束吸收后加能量
execute as @e[scores={mie_pot_ab_t=60..}] at @s run function miecraft:app/pots/add_energy
# 吸收部分动画
execute as @e[scores={mie_pot_ab_t=1..}] at @s run function miecraft:app/pots/effect/absorb/sheep
# 吸收粒子效果
execute as @e[tag=mie_sheep_ab_effect] at @s run function miecraft:app/pots/effect/absorb/particle