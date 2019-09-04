scoreboard players set @s mie_item_inf_t 0

function miecraft:crafting/infusion/process/fail_effect
tellraw @a[distance=..10] {"translate":"info.mie.infusion.interrupt"}
