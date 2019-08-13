# 初始化玩家分数
function miecraft:sheep_energy/reset_score

# 穷举玩家背包
execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:0b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:0b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:0b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:1b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:1b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:1b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:2b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:2b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:2b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:3b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:3b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:3b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:4b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:4b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:4b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:5b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:5b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:5b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:6b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:6b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:6b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:7b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:7b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:7b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:8b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:8b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:8b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:9b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:9b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:9b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:10b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:10b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:10b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:11b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:11b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:11b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:12b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:12b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:12b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:13b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:13b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:13b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:14b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:14b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:14b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:15b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:15b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:15b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:16b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:16b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:16b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:17b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:17b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:17b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:18b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:18b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:18b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:19b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:19b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:19b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:20b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:20b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:20b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:21b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:21b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:21b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:22b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:22b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:22b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:23b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:23b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:23b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:24b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:24b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:24b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:25b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:25b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:25b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:26b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:26b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:26b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:27b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:27b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:27b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:28b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:28b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:28b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:29b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:29b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:29b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:30b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:30b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:30b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:31b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:31b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:31b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:32b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:32b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:32b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:33b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:33b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:33b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:34b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:34b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:34b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:35b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:35b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:35b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add

execute store result score @s mie_temp1 run data get entity @s Inventory[{Slot:-106b}].tag.mie_id
execute store result score @s mie_temp2 run data get entity @s Inventory[{Slot:-106b}].tag.mie_data1
execute store result score @s mie_temp3 run data get entity @s Inventory[{Slot:-106b}].tag.mie_data2
execute if score @s mie_temp1 matches 3 run function miecraft:sheep_energy/item_to_score/add