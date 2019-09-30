# 开始注魔状态
scoreboard players set @s mie_item_inf_t 1
scoreboard players set @s mie_item_inf_c 0


# info
tellraw @a[distance=..10] {"translate":"info.mie.infusion.start"}

# 音效
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1

# 重置讲台
clone ~ ~ ~ ~ ~ ~ ~ 255 ~ replace force
setblock ~ ~ ~ air replace
clone ~ 255 ~ ~ 255 ~ ~ ~ ~ replace force
