advancement revoke @s only miecraft:system/damage_taken/damage_0

scoreboard players set @s mie_temp1 1
# 判断是否穿衣服
execute as @a[nbt={Inventory:[{Slot:103b,tag:{mie_id:"sheep_helmet"}},{Slot:102b,tag:{mie_id:"sheep_chestplate"}},{Slot:101b,tag:{mie_id:"sheep_leggings"}},{Slot:100b,tag:{mie_id:"sheep_boots"}}]}] run function miecraft:app/armor/all/damage_taken/consume
