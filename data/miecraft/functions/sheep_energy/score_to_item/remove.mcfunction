# 目前的全部暂存起来
execute store result score @s mie_eg_white_t run scoreboard players get @s mie_eg_white
execute store result score @s mie_eg_orange_t run scoreboard players get @s mie_eg_orange
execute store result score @s mie_eg_magenta_t run scoreboard players get @s mie_eg_magenta
execute store result score @s mie_eg_l_blue_t run scoreboard players get @s mie_eg_l_blue
execute store result score @s mie_eg_yellow_t run scoreboard players get @s mie_eg_yellow
execute store result score @s mie_eg_lime_t run scoreboard players get @s mie_eg_lime
execute store result score @s mie_eg_pink_t run scoreboard players get @s mie_eg_pink
execute store result score @s mie_eg_gray_t run scoreboard players get @s mie_eg_gray
execute store result score @s mie_eg_l_gray_t run scoreboard players get @s mie_eg_l_gray
execute store result score @s mie_eg_cyan_t run scoreboard players get @s mie_eg_cyan
execute store result score @s mie_eg_purple_t run scoreboard players get @s mie_eg_purple
execute store result score @s mie_eg_blue_t run scoreboard players get @s mie_eg_blue
execute store result score @s mie_eg_brown_t run scoreboard players get @s mie_eg_brown
execute store result score @s mie_eg_green_t run scoreboard players get @s mie_eg_green
execute store result score @s mie_eg_red_t run scoreboard players get @s mie_eg_red
execute store result score @s mie_eg_black_t run scoreboard players get @s mie_eg_black
# 计算当前可用能量
function miecraft:sheep_energy/item_to_score
# 与暂存的比较
execute if score @s mie_eg_white_t > @s mie_eg_white run tag @s add mie_no_energy
execute if score @s mie_eg_orange_t > @s mie_eg_orange run tag @s add mie_no_energy
execute if score @s mie_eg_magenta_t > @s mie_eg_magenta run tag @s add mie_no_energy
execute if score @s mie_eg_l_blue_t > @s mie_eg_l_blue run tag @s add mie_no_energy
execute if score @s mie_eg_yellow_t > @s mie_eg_yellow run tag @s add mie_no_energy
execute if score @s mie_eg_lime_t > @s mie_eg_lime run tag @s add mie_no_energy
execute if score @s mie_eg_pink_t > @s mie_eg_pink run tag @s add mie_no_energy
execute if score @s mie_eg_gray_t > @s mie_eg_gray run tag @s add mie_no_energy
execute if score @s mie_eg_l_gray_t > @s mie_eg_l_gray run tag @s add mie_no_energy
execute if score @s mie_eg_cyan_t > @s mie_eg_cyan run tag @s add mie_no_energy
execute if score @s mie_eg_purple_t > @s mie_eg_purple run tag @s add mie_no_energy
execute if score @s mie_eg_blue_t > @s mie_eg_blue run tag @s add mie_no_energy
execute if score @s mie_eg_brown_t > @s mie_eg_brown run tag @s add mie_no_energy
execute if score @s mie_eg_green_t > @s mie_eg_green run tag @s add mie_no_energy
execute if score @s mie_eg_red_t > @s mie_eg_red run tag @s add mie_no_energy
execute if score @s mie_eg_black_t > @s mie_eg_black run tag @s add mie_no_energy

execute if score @s mie_eg_white_t > @s mie_eg_white run tellraw @s {"translate":"info.mie.pot.no_energy.white"}
execute if score @s mie_eg_orange_t > @s mie_eg_orange run tellraw @s {"translate":"info.mie.pot.no_energy.orange"}
execute if score @s mie_eg_magenta_t > @s mie_eg_magenta run tellraw @s {"translate":"info.mie.pot.no_energy.magenta"}
execute if score @s mie_eg_l_blue_t > @s mie_eg_l_blue run tellraw @s {"translate":"info.mie.pot.no_energy.light_blue"}
execute if score @s mie_eg_yellow_t > @s mie_eg_yellow run tellraw @s {"translate":"info.mie.pot.no_energy.yellow"}
execute if score @s mie_eg_lime_t > @s mie_eg_lime run tellraw @s {"translate":"info.mie.pot.no_energy.lime"}
execute if score @s mie_eg_pink_t > @s mie_eg_pink run tellraw @s {"translate":"info.mie.pot.no_energy.pink"}
execute if score @s mie_eg_gray_t > @s mie_eg_gray run tellraw @s {"translate":"info.mie.pot.no_energy.gray"}
execute if score @s mie_eg_l_gray_t > @s mie_eg_l_gray run tellraw @s {"translate":"info.mie.pot.no_energy.light_gray"}
execute if score @s mie_eg_cyan_t > @s mie_eg_cyan run tellraw @s {"translate":"info.mie.pot.no_energy.cyan"}
execute if score @s mie_eg_purple_t > @s mie_eg_purple run tellraw @s {"translate":"info.mie.pot.no_energy.purple"}
execute if score @s mie_eg_blue_t > @s mie_eg_blue run tellraw @s {"translate":"info.mie.pot.no_energy.blue"}
execute if score @s mie_eg_brown_t > @s mie_eg_brown run tellraw @s {"translate":"info.mie.pot.no_energy.brown"}
execute if score @s mie_eg_green_t > @s mie_eg_green run tellraw @s [{"translate":"info.mie.pot.no_energy.green"},{"score":{"name":"@s","objective":"mie_eg_green_t"}},{"translate":"info.mie.pot.no_energy.green.suf"}]
execute if score @s mie_eg_red_t > @s mie_eg_red run tellraw @s {"translate":"info.mie.pot.no_energy.red"}
execute if score @s mie_eg_black_t > @s mie_eg_black run tellraw @s {"translate":"info.mie.pot.no_energy.black"}




# 未透支的执行函数
execute as @s[tag=!mie_no_energy] run function miecraft:sheep_energy/score_to_item/remove/main
# 透支的掉血
execute as @s[tag=mie_no_energy] run effect give @s minecraft:instant_damage 1 0 true

# 删除tag
tag @s[tag=mie_no_energy] remove mie_no_energy