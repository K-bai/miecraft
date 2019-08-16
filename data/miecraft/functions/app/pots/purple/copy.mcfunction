# find player
tag @s add mie_purple_temp
execute as @a if score @s mie_id = @e[tag=mie_purple_temp,limit=1] mie_id run tag @s add mie_purple_player
# effect
execute align xyz run particle minecraft:dust 0.475 0.165 0.675 1 ~.5 ~.5 ~.5 .4 .4 .4 1 50
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 1 2
loot give @a[tag=mie_purple_player] mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
# clear
tag @s remove mie_purple_temp
tag @a[tag=mie_purple_player] remove mie_purple_player