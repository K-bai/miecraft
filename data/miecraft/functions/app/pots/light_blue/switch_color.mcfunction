# 保存目前颜色
execute store result score @s mie_temp1 run data get entity @s SelectedItem.tag.mie_data3
# 轮换颜色
scoreboard players add @s mie_temp1 1
scoreboard players set @s[scores={mie_temp1=16}] mie_temp1 0
# 保存颜色
execute store result entity @s SelectedItem.tag.mie_data3 int 1 run scoreboard players get @s mie_temp1

# 显示lore
execute if score @s mie_temp1 matches 0 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§f白§r"]'
execute if score @s mie_temp1 matches 1 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§6橙§r"]'
execute if score @s mie_temp1 matches 2 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§5紫红§r"]'
execute if score @s mie_temp1 matches 3 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§b海蓝§r"]'
execute if score @s mie_temp1 matches 4 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§e黄§r"]'
execute if score @s mie_temp1 matches 5 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§a柠§r"]'
execute if score @s mie_temp1 matches 6 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§d粉§r"]'
execute if score @s mie_temp1 matches 7 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§8灰§r"]'
execute if score @s mie_temp1 matches 8 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§7浅灰§r"]'
execute if score @s mie_temp1 matches 9 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§3青§r"]'
execute if score @s mie_temp1 matches 10 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§1紫§r"]'
execute if score @s mie_temp1 matches 11 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§9蓝§r"]'
execute if score @s mie_temp1 matches 12 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§4棕§r"]'
execute if score @s mie_temp1 matches 13 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§2绿§r"]'
execute if score @s mie_temp1 matches 14 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§c红§r"]'
execute if score @s mie_temp1 matches 15 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '["§r§b当前颜色：§0黑§r"]'

# 提示
execute if score @s mie_temp1 matches 0 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"白","color":"white"}]
execute if score @s mie_temp1 matches 1 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"橙","color":"gold"}]
execute if score @s mie_temp1 matches 2 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"紫红","color":"dark_purple"}]
execute if score @s mie_temp1 matches 3 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"海蓝","color":"aqua"}]
execute if score @s mie_temp1 matches 4 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"黄","color":"yellow"}]
execute if score @s mie_temp1 matches 5 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"柠","color":"green"}]
execute if score @s mie_temp1 matches 6 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"粉","color":"light_purple"}]
execute if score @s mie_temp1 matches 7 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"灰","color":"dark_gray"}]
execute if score @s mie_temp1 matches 8 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"浅灰","color":"gray"}]
execute if score @s mie_temp1 matches 9 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"青","color":"dark_aqua"}]
execute if score @s mie_temp1 matches 10 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"紫","color":"dark_blue"}]
execute if score @s mie_temp1 matches 11 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"蓝","color":"blue"}]
execute if score @s mie_temp1 matches 12 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"棕","color":"dark_red"}]
execute if score @s mie_temp1 matches 13 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"绿","color":"dark_green"}]
execute if score @s mie_temp1 matches 14 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"红","color":"red"}]
execute if score @s mie_temp1 matches 15 run tellraw @s [{"text":" - 海蓝羊羊：颜色切换至 ","italic":true,"color":"gray"},{"text":"黑","color":"black"}]


# 音效
playsound minecraft:item.bottle.empty ambient @a ~ ~ ~ 1 2