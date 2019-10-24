execute as @a[scores={mie_nw_wch_use=1..},nbt={SelectedItem:{tag:{mie_id:"sheep_wrench"}}}] at @s run function mietwork:app/sheep_wrench/check
scoreboard players set @a[scores={mie_nw_wch_use=1..}] mie_nw_wch_use 0
scoreboard players set @a[scores={mie_nw_wch_sneak=1..}] mie_nw_wch_sneak 0


