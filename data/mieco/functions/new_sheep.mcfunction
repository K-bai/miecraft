scoreboard players set @s mie_eco_sanity 10000
scoreboard players set @s mie_eco_mood 10000
scoreboard players set @s mie_eco_insane_t 0
tag @s add mie_sheep
tag @s[nbt={Sheared:1b}] add mie_sheep_sheared
tag @s[nbt={Age:0}] add mie_sheep_can_feed

data merge entity @s {DeathLootTable:"mieco:sheep"}