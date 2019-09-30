execute as @a[scores={mie_eco_nmr_use=1..},nbt={SelectedItem:{tag:{mie_id:"portable_sheep_nmr"}}}] at @s run function mieco:app/portable_sheep_nmr/check
scoreboard players set @a[scores={mie_eco_nmr_use=1..}] mie_eco_nmr_use 0
