# 保存目前颜色
execute store result score @s mie_temp1 run data get entity @s SelectedItem.tag.mie_data3
# 轮换颜色
scoreboard players add @s mie_temp1 1
scoreboard players set @s[scores={mie_temp1=16}] mie_temp1 0
# 保存颜色
execute store result entity @s SelectedItem.tag.mie_data3 int 1 run scoreboard players get @s mie_temp1

# 显示lore
execute if score @s mie_temp1 matches 0 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_white.pot.light_blue"}'
execute if score @s mie_temp1 matches 1 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_orange.pot.light_blue"}'
execute if score @s mie_temp1 matches 2 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_magenta.pot.light_blue"}'
execute if score @s mie_temp1 matches 3 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_light_blue.pot.light_blue"}'
execute if score @s mie_temp1 matches 4 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_yellow.pot.light_blue"}'
execute if score @s mie_temp1 matches 5 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_lime.pot.light_blue"}'
execute if score @s mie_temp1 matches 6 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_pink.pot.light_blue"}'
execute if score @s mie_temp1 matches 7 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_gray.pot.light_blue"}'
execute if score @s mie_temp1 matches 8 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_light_gray.pot.light_blue"}'
execute if score @s mie_temp1 matches 9 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_cyan.pot.light_blue"}'
execute if score @s mie_temp1 matches 10 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_purple.pot.light_blue"}'
execute if score @s mie_temp1 matches 11 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_blue.pot.light_blue"}'
execute if score @s mie_temp1 matches 12 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_brown.pot.light_blue"}'
execute if score @s mie_temp1 matches 13 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_green.pot.light_blue"}'
execute if score @s mie_temp1 matches 14 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_red.pot.light_blue"}'
execute if score @s mie_temp1 matches 15 run data modify entity @s SelectedItem.tag.display.Lore[-2] set value '{"translate":"item.mie.lore8_black.pot.light_blue"}'




# 提示
execute if score @s mie_temp1 matches 0 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.white"}
execute if score @s mie_temp1 matches 1 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.orange"}
execute if score @s mie_temp1 matches 2 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.magenta"}
execute if score @s mie_temp1 matches 3 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.light_blue"}
execute if score @s mie_temp1 matches 4 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.yellow"}
execute if score @s mie_temp1 matches 5 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.lime"}
execute if score @s mie_temp1 matches 6 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.pink"}
execute if score @s mie_temp1 matches 7 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.gray"}
execute if score @s mie_temp1 matches 8 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.light_gray"}
execute if score @s mie_temp1 matches 9 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.cyan"}
execute if score @s mie_temp1 matches 10 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.purple"}
execute if score @s mie_temp1 matches 11 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.blue"}
execute if score @s mie_temp1 matches 12 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.brown"}
execute if score @s mie_temp1 matches 13 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.green"}
execute if score @s mie_temp1 matches 14 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.red"}
execute if score @s mie_temp1 matches 15 run tellraw @s {"translate":"info.mie.pot.light_blue.switch.black"}



# 音效
playsound minecraft:item.bottle.empty ambient @a ~ ~ ~ 1 2