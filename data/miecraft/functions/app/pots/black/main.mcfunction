# 已创建过传送点
execute if entity @s[nbt={SelectedItem:{tag:{mie_data3:{dimension:"overworld"}}},Dimension:0}] run function miecraft:app/pots/black/teleport
execute if entity @s[nbt={SelectedItem:{tag:{mie_data3:{dimension:"the_nether"}}},Dimension:-1}] run function miecraft:app/pots/black/teleport
execute if entity @s[nbt={SelectedItem:{tag:{mie_data3:{dimension:"the_end"}}},Dimension:1}] run function miecraft:app/pots/black/teleport
# 提示
execute if entity @s[nbt={SelectedItem:{tag:{mie_data3:{dimension:"overworld"}}}}] unless entity @s[nbt={Dimension:0}] run tellraw @s [{"text":" - 黑羊羊的魔法无法将你传送到另一个世界.","italic":true,"color":"gray"}]
execute if entity @s[nbt={SelectedItem:{tag:{mie_data3:{dimension:"the_nether"}}}}] unless entity @s[nbt={Dimension:-1}] run tellraw @s [{"text":" - 黑羊羊的魔法无法将你传送到另一个世界.","italic":true,"color":"gray"}]
execute if entity @s[nbt={SelectedItem:{tag:{mie_data3:{dimension:"the_end"}}}}] unless entity @s[nbt={Dimension:1}] run tellraw @s [{"text":" - 黑羊羊的魔法无法将你传送到另一个世界.","italic":true,"color":"gray"}]



# 没创建传送点
execute if entity @s[nbt={SelectedItem:{tag:{mie_data3:{dimension:"none"}}}}] run function miecraft:app/pots/black/new_point