tag @s remove mie_item_inf_locked
tag @s[tag=mie_item_other_inf_locked] remove mie_item_other_inf_locked
tag @s[tag=mie_item_white_inf_locked] remove mie_item_white_inf_locked
tag @s[tag=mie_item_orange_inf_locked] remove mie_item_orange_inf_locked
tag @s[tag=mie_item_magenta_inf_locked] remove mie_item_magenta_inf_locked
tag @s[tag=mie_item_light_blue_inf_locked] remove mie_item_light_blue_inf_locked
tag @s[tag=mie_item_yellow_inf_locked] remove mie_item_yellow_inf_locked
tag @s[tag=mie_item_lime_inf_locked] remove mie_item_lime_inf_locked
tag @s[tag=mie_item_pink_inf_locked] remove mie_item_pink_inf_locked
tag @s[tag=mie_item_gray_inf_locked] remove mie_item_gray_inf_locked
tag @s[tag=mie_item_light_gray_inf_locked] remove mie_item_light_gray_inf_locked
tag @s[tag=mie_item_cyan_inf_locked] remove mie_item_cyan_inf_locked
tag @s[tag=mie_item_purple_inf_locked] remove mie_item_purple_inf_locked
tag @s[tag=mie_item_blue_inf_locked] remove mie_item_blue_inf_locked
tag @s[tag=mie_item_brown_inf_locked] remove mie_item_brown_inf_locked
tag @s[tag=mie_item_green_inf_locked] remove mie_item_green_inf_locked
tag @s[tag=mie_item_red_inf_locked] remove mie_item_red_inf_locked
tag @s[tag=mie_item_black_inf_locked] remove mie_item_black_inf_locked

data merge entity @s {PickupDelay:0,NoGravity:0}

scoreboard players set @s mie_item_inf_t 0
