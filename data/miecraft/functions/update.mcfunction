# 检测玩家手中的物品并自动升级
# 0.1.0升级 数字id变为文字id
execute as @a[nbt={SelectedItem:{tag:{mie_id:1}}}] run data modify entity @s SelectedItem.tag.mie_id set value "magic_book_not_finished"
execute as @a[nbt={SelectedItem:{tag:{mie_id:2}}}] run data modify entity @s SelectedItem.tag.mie_id set value "magic_book"
execute as @a[nbt={SelectedItem:{tag:{mie_id:3}}}] run data modify entity @s SelectedItem.tag.mie_id set value "pot"
execute as @a[nbt={SelectedItem:{tag:{mie_id:5}}}] run data modify entity @s SelectedItem.tag.CustomModelData set value 13950502
execute as @a[nbt={SelectedItem:{tag:{mie_id:5}}}] run data modify entity @s SelectedItem.tag.mie_id set value "diamond_magic_sword"

# 书本升级
execute as @a[nbt={SelectedItem:{tag:{mie_id:"magic_book"}}}] unless entity @s[nbt={SelectedItem:{tag:{mie_data1:"0.2.0"}}}] at @s run function miecraft:book/item/book
execute as @a[nbt={SelectedItem:{tag:{mie_id:"magic_book"}}}] unless entity @s[nbt={SelectedItem:{tag:{mie_data1:"0.2.0"}}}] run replaceitem entity @s weapon.mainhand minecraft:air

