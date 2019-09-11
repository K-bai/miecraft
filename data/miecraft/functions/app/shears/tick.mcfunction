# 检测到使用剪刀 减羊羊能量
execute as @a[nbt={SelectedItem:{tag:{mie_id:"magic_shears"}}},scores={mie_use_shears=1..}] run function miecraft:app/shears/main
scoreboard players set @a[scores={mie_use_shears=1..}] mie_use_shears 0