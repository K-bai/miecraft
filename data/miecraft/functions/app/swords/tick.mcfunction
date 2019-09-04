# 检测玩家手里拿剑 更新剑攻击力
execute as @a[nbt={SelectedItem:{tag:{mie_id:5,mie_data1:2}}}] run function miecraft:app/swords/diamond/update

# 检测用剑攻击 减羊羊能量
execute as @a[nbt={SelectedItem:{tag:{mie_id:5,mie_data1:2}}},scores={mie_sword_dm=1..}] run function miecraft:app/swords/diamond/consume
scoreboard players set @a[scores={mie_sword_dm=1..}] mie_sword_dm 0