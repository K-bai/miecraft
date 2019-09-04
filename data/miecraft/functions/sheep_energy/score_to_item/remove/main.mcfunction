# 标记自己
tag @s add mie_eg_player_temp
# 穷举玩家背包 先主手，再副手
execute store result score @s mie_temp1 run data get entity @s SelectedItem.tag.mie_id
execute store result score @s mie_temp2 run data get entity @s SelectedItem.tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s SelectedItem.tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s SelectedItem.tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s SelectedItem.tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:-106b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:-106b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:-106b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:-106b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:-106b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

# 其余空位
execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:0b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:0b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:0b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:0b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:0b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:0b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:1b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:1b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:1b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:1b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:1b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:1b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:2b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:2b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:2b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:2b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:2b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:2b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:3b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:3b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:3b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:3b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:3b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:3b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:4b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:4b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:4b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:4b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:4b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:4b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:5b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:5b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:5b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:5b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:5b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:5b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:6b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:6b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:6b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:6b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:6b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:6b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:7b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:7b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:7b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:7b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:7b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:7b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:8b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:8b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:8b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:8b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:8b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:8b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:9b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:9b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:9b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:9b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:9b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:9b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:10b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:10b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:10b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:10b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:10b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:10b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:11b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:11b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:11b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:11b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:11b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:11b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:12b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:12b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:12b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:12b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:12b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:12b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:13b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:13b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:13b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:13b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:13b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:13b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:14b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:14b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:14b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:14b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:14b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:14b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:15b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:15b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:15b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:15b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:15b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:15b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:16b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:16b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:16b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:16b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:16b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:16b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:17b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:17b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:17b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:17b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:17b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:17b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:18b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:18b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:18b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:18b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:18b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:18b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:19b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:19b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:19b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:19b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:19b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:19b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:20b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:20b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:20b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:20b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:20b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:20b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:21b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:21b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:21b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:21b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:21b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:21b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:22b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:22b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:22b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:22b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:22b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:22b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:23b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:23b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:23b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:23b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:23b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:23b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:24b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:24b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:24b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:24b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:24b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:24b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:25b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:25b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:25b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:25b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:25b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:25b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:26b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:26b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:26b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:26b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:26b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:26b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:27b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:27b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:27b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:27b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:27b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:27b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:28b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:28b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:28b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:28b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:28b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:28b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:29b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:29b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:29b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:29b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:29b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:29b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:30b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:30b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:30b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:30b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:30b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:30b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:31b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:31b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:31b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:31b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:31b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:31b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:32b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:32b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:32b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:32b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:32b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:32b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:33b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:33b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:33b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:33b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:33b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:33b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:34b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:34b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:34b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:34b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:34b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:34b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:35b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:35b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:35b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/score_to_item/remove/per_item
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:35b}].tag.mie_data2 int 1 run scoreboard players get @s mie_temp3
execute if score @s mie_temp1 matches 3 store result entity @s Inventory[{Slot:35b}].tag.Damage int 1 run scoreboard players get @s mie_temp4
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/display
execute if score @s mie_temp1 matches 3 run data modify entity @s Inventory[{Slot:35b}].tag.display.Lore[-1] set from entity @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1] HandItems[0].tag.display.Name
execute if score @s mie_temp1 matches 3 run kill @e[type=minecraft:armor_stand,tag=mie_as_lore_temp,limit=1]

# 删除标记
tag @s remove mie_eg_player_temp
