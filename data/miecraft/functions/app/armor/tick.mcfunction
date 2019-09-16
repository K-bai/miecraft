# 改变颜色
execute as @a[nbt={SelectedItem:{tag:{mie_id:"pot"}},Inventory:[{Slot:103b,tag:{mie_id:"sheep_helmet"}}]}] run function miecraft:app/armor/change_color/helmet
execute as @a[nbt={SelectedItem:{tag:{mie_id:"pot"}},Inventory:[{Slot:102b,tag:{mie_id:"sheep_chestplate"}}]}] run function miecraft:app/armor/change_color/chestplate
execute as @a[nbt={SelectedItem:{tag:{mie_id:"pot"}},Inventory:[{Slot:101b,tag:{mie_id:"sheep_leggings"}}]}] run function miecraft:app/armor/change_color/leggings
execute as @a[nbt={SelectedItem:{tag:{mie_id:"pot"}},Inventory:[{Slot:100b,tag:{mie_id:"sheep_boots"}}]}] run function miecraft:app/armor/change_color/boots

# 增加减伤buff
execute as @a[nbt={Inventory:[{Slot:103b,tag:{mie_id:"sheep_helmet"}},{Slot:102b,tag:{mie_id:"sheep_chestplate"}},{Slot:101b,tag:{mie_id:"sheep_leggings"}},{Slot:100b,tag:{mie_id:"sheep_boots"}}]}] run function miecraft:app/armor/all/buff