# 检查框架是否正确
function miecraft:crafting/infusion/check_frame
# 如果全有就lock
execute if score @s mie_temp2 matches 1 run data merge entity @s {PickupDelay:32767,Age:-32768}
execute if score @s mie_temp2 matches 1 run tag @s add mie_item_locked
execute if score @s mie_temp2 matches 1 run tag @s add mie_item_other_locked
# 传送搞位置
execute if score @s mie_temp2 matches 1 align xyz run tp @s ~.5 ~.9 ~.5

# 如果没有就unlock
execute if entity @s[tag=mie_item_locked] unless score @s mie_temp2 matches 1 run function miecraft:crafting/infusion/lock/clear_lock_tag
