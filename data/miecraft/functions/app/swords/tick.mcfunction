# 检测玩家手里拿剑 更新剑攻击力
execute as @a[nbt={SelectedItem:{tag:{mie_id:"diamond_magic_sword"}}}] run function miecraft:app/swords/diamond/update

# 检测用剑攻击 减羊羊能量
execute as @a[nbt={SelectedItem:{tag:{mie_id:"diamond_magic_sword"}}},scores={mie_sword_dm=1..}] run function miecraft:app/swords/diamond/consume
scoreboard players set @a[scores={mie_sword_dm=1..}] mie_sword_dm 0
execute as @a[nbt={SelectedItem:{tag:{mie_id:"golden_magic_sword"}}},scores={mie_sword_gd=1..}] at @s run function miecraft:app/swords/golden/consume
scoreboard players set @a[scores={mie_sword_gd=1..}] mie_sword_gd 0
