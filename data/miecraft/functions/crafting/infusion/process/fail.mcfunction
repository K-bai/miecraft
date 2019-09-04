# 清除计分板
scoreboard players set @s mie_item_inf_t 0
# 效果
function miecraft:crafting/infusion/process/fail_effect
# 提示
tellraw @a[distance=..10] {"translate":"info.mie.infusion.fail"}
