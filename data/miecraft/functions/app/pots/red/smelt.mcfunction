scoreboard players set @s mie_temp1 0
execute if block ~ ~ ~ minecraft:iron_ore run scoreboard players set @s mie_temp1 1
execute if block ~ ~ ~ minecraft:gold_ore run scoreboard players set @s mie_temp1 2
execute if score @s mie_temp1 matches 1.. run setblock ~ ~ ~ air
execute if score @s mie_temp1 matches 1.. align xyz run particle minecraft:dust 0.631 0.153 0.133 1 ~.5 ~.5 ~.5 .3 .3 .3 1 50
execute if score @s mie_temp1 matches 1.. run playsound minecraft:block.stone.break ambient @a

execute if score @s mie_temp1 matches 1 align xyz run particle minecraft:block iron_ore ~.5 ~.5 ~.5 .3 .3 .3 1 50
execute if score @s mie_temp1 matches 1 align xyz run loot spawn ~.5 ~.5 ~.5 loot miecraft:red_smelt/iron_ingot
execute if score @s mie_temp1 matches 1 align xyz run loot spawn ~.5 ~.5 ~.5 loot miecraft:red_smelt/iron_ingot

execute if score @s mie_temp1 matches 2 align xyz run particle minecraft:block gold_ore ~.5 ~.5 ~.5 .3 .3 .3 1 50
execute if score @s mie_temp1 matches 2 align xyz run loot spawn ~.5 ~.5 ~.5 loot miecraft:red_smelt/gold_ingot
execute if score @s mie_temp1 matches 2 align xyz run loot spawn ~.5 ~.5 ~.5 loot miecraft:red_smelt/gold_ingot
