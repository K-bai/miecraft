# 找读讲台玩家
execute as @a[scores={mie_read_lectern=1..}] at @s run function miecraft:crafting/pot/read_lectern
# 清空读讲台计分板
scoreboard players set @a[scores={mie_read_lectern=1..}] mie_read_lectern 0

# 合成效果
scoreboard players add @e[tag=mie_pot_craft_effect] mie_pot_c_effect 1
execute as @e[tag=mie_pot_craft_effect] at @s run function miecraft:crafting/pot/particle/pot
execute as @e[tag=mie_pot_craft_effect,scores={mie_pot_c_effect=1}] at @s run function miecraft:crafting/pot/effect/start
execute as @e[tag=mie_pot_craft_effect,scores={mie_pot_c_effect=42}] at @s run function miecraft:crafting/pot/effect/end
kill @e[tag=mie_pot_craft_effect,scores={mie_pot_c_effect=42}]