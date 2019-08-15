# 生成新aec
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mie_green_log_temp"],Duration:999}
# 增加aec序号
scoreboard players add @e[tag=mie_green_log_temp] mie_green_t 1
# 在最新aec处往上看有没有方块
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~ ~1 ~ unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
# 其他方向看-平级
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~ ~ ~1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~ ~ ~-1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~1 ~ ~1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~1 ~ ~ unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~1 ~ ~-1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~-1 ~ ~1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~-1 ~ ~ unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~-1 ~ ~-1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
# 斜上
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~ ~1 ~1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~ ~1 ~-1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~1 ~1 ~1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~1 ~1 ~ unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~1 ~1 ~-1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~-1 ~1 ~1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~-1 ~1 ~ unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
execute unless entity @e[tag=mie_green_log_temp,scores={mie_green_t=100..}] positioned ~-1 ~1 ~-1 unless entity @e[tag=mie_green_log_temp,distance=...1] if block ~ ~ ~ #miecraft:green_chop run function miecraft:app/pots/green/recurse
