scoreboard players set @s mie_temp1 100
execute store result score @s mie_temp2 run scoreboard players get @e[tag=mie_ray_target,type=sheep,limit=1] mie_eco_mood
execute store result score @s mie_temp3 run scoreboard players get @e[tag=mie_ray_target,type=sheep,limit=1] mie_eco_sanity
scoreboard players operation @s mie_temp2 /= @s mie_temp1
scoreboard players operation @s mie_temp3 /= @s mie_temp1
tellraw @s {"translate":"info.mie.nmr", "with":[{"score":{"name":"@s","objective":"mie_temp2"}}, {"score":{"name":"@s","objective":"mie_temp3"}}]}