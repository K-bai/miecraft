import os
class inf_item:
    def __init__(self, name, namespace):
        self.name = name
        self.namespace = namespace
    
    def parse(self):
        if self.namespace == 'V':
            return 'id:"minecraft:{}"'.format(self.name)
        elif self.namespace == 'MIE':
            return 'tag:{{mie_id:"{}"}}'.format(self.name)

class infusion:
    def __init__(self, item_name, core, inf_type):
        self.name = item_name
        self.core = core
        if inf_type == 'ADVANCED':
            self.type = 'ADVANCED'
            self.energy = []
            self.item_list = []
        else:
            self.type = 'NORMAL'
            self.energy = []
    
    def add_energy(self, name, value):
        if name == 'white':
            board_name = 'mie_eg_white'
        elif name == 'orange':
            board_name = 'mie_eg_orange'
        elif name == 'magenta':
            board_name = 'mie_eg_magenta'
        elif name == 'light_blue':
            board_name = 'mie_eg_l_blue'
        elif name == 'yellow':
            board_name = 'mie_eg_yellow'
        elif name == 'lime':
            board_name = 'mie_eg_lime'
        elif name == 'pink':
            board_name = 'mie_eg_pink'
        elif name == 'gray':
            board_name = 'mie_eg_gray'
        elif name == 'light_gray':
            board_name = 'mie_eg_l_gray'
        elif name == 'cyan':
            board_name = 'mie_eg_cyan'
        elif name == 'purple':
            board_name = 'mie_eg_purple'
        elif name == 'blue':
            board_name = 'mie_eg_blue'
        elif name == 'brown':
            board_name = 'mie_eg_brown'
        elif name == 'green':
            board_name = 'mie_eg_green'
        elif name == 'red':
            board_name = 'mie_eg_red'
        elif name == 'black':
            board_name = 'mie_eg_black'
        else:
            return
        self.energy.append([board_name, value])

    def add_item(self, a_item, value):
        self.item_list.append([a_item, value])


















recipes = []
# 初级中间产品
recipes.append(infusion('light_shell', inf_item('magic_bone_meal', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('white', 5)

recipes.append(infusion('bio_essence', inf_item('magic_tropical_fish', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('orange', 5)

recipes.append(infusion('glue', inf_item('magic_chorus_fruit', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('magenta', 5)

recipes.append(infusion('cooling_block', inf_item('magic_ice', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('light_blue', 5)

recipes.append(infusion('yellow_energy_block', inf_item('magic_gold_nugget', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('yellow', 5)

recipes.append(infusion('fibre', inf_item('magic_sugar_cane', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('lime', 5)

recipes.append(infusion('sap', inf_item('magic_beetroot', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('pink', 5)

recipes.append(infusion('solid_fuel', inf_item('magic_gunpowder', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('gray', 5)

recipes.append(infusion('metal_fastener', inf_item('magic_iron_nugget', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('light_gray', 2)

recipes.append(infusion('prismarine_baffle', inf_item('magic_prismarine_shard', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('cyan', 5)

recipes.append(infusion('obsidian_crystal', inf_item('magic_obsidian', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('purple', 1)

recipes.append(infusion('blue_energy_block', inf_item('magic_lapis_lazuli', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('blue', 5)

recipes.append(infusion('heavy_shell', inf_item('magic_bricks', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('brown', 5)

recipes.append(infusion('wooden_handle', inf_item('magic_oak_wood', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('green', 5)

recipes.append(infusion('red_energy_block', inf_item('magic_redstone', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('red', 5)

recipes.append(infusion('clear_ender_glass', inf_item('magic_ender_pearl', 'MIE'), 'NORMAL'))
recipes[-1].add_energy('black', 5)

# 次级中间产品
recipes.append(infusion('item_energy_buffer', inf_item('glass_bottle', 'V'), 'ADVANCED'))
recipes[-1].add_energy('white', 20)
recipes[-1].add_energy('magenta', 10)
recipes[-1].add_item(inf_item('light_shell', 'MIE'), 1)
recipes[-1].add_item(inf_item('glue', 'MIE'), 1)
recipes[-1].add_item(inf_item('red_energy_block', 'MIE'), 1)
recipes[-1].add_item(inf_item('yellow_energy_block', 'MIE'), 1)
recipes[-1].add_item(inf_item('blue_energy_block', 'MIE'), 1)

recipes.append(infusion('advanced_item_energy_buffer', inf_item('item_energy_buffer', 'MIE'), 'ADVANCED'))
recipes[-1].add_energy('light_gray', 20)
recipes[-1].add_energy('magenta', 10)
recipes[-1].add_item(inf_item('heavy_shell', 'MIE'), 2)
recipes[-1].add_item(inf_item('glue', 'MIE'), 2)
recipes[-1].add_item(inf_item('red_energy_block', 'MIE'), 3)
recipes[-1].add_item(inf_item('yellow_energy_block', 'MIE'), 3)
recipes[-1].add_item(inf_item('blue_energy_block', 'MIE'), 3)

recipes.append(infusion('item_energy_controller', inf_item('comparator', 'V'), 'ADVANCED'))
recipes[-1].add_energy('white', 40)
recipes[-1].add_energy('light_blue', 20)
recipes[-1].add_item(inf_item('light_shell', 'MIE'), 1)
recipes[-1].add_item(inf_item('cooling_block', 'MIE'), 1)
recipes[-1].add_item(inf_item('glue', 'MIE'), 2)
recipes[-1].add_item(inf_item('metal_fastener', 'MIE'), 2)
recipes[-1].add_item(inf_item('red_energy_block', 'MIE'), 1)
recipes[-1].add_item(inf_item('yellow_energy_block', 'MIE'), 1)
recipes[-1].add_item(inf_item('blue_energy_block', 'MIE'), 1)

recipes.append(infusion('advanced_item_energy_controller', inf_item('item_energy_controller', 'MIE'), 'ADVANCED'))
recipes[-1].add_energy('light_gray', 40)
recipes[-1].add_energy('light_blue', 20)
recipes[-1].add_item(inf_item('light_shell', 'MIE'), 3)
recipes[-1].add_item(inf_item('cooling_block', 'MIE'), 3)
recipes[-1].add_item(inf_item('glue', 'MIE'), 3)
recipes[-1].add_item(inf_item('metal_fastener', 'MIE'), 3)
recipes[-1].add_item(inf_item('red_energy_block', 'MIE'), 1)
recipes[-1].add_item(inf_item('yellow_energy_block', 'MIE'), 1)
recipes[-1].add_item(inf_item('blue_energy_block', 'MIE'), 1)

recipes.append(infusion('micro_lens', inf_item('glass', 'V'), 'ADVANCED'))
recipes[-1].add_energy('black', 10)
recipes[-1].add_energy('brown', 10)
recipes[-1].add_item(inf_item('clear_ender_glass', 'MIE'), 3)

recipes.append(infusion('micro_field_generator', inf_item('dispenser', 'V'), 'ADVANCED'))
recipes[-1].add_energy('white', 40)
recipes[-1].add_energy('brown', 20)
recipes[-1].add_item(inf_item('item_energy_buffer', 'MIE'), 1)
recipes[-1].add_item(inf_item('item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('light_shell', 'MIE'), 1)
recipes[-1].add_item(inf_item('micro_lens', 'MIE'), 1)



# 工具装备
recipes.append(infusion('magic_shears', inf_item('shears', 'V'), 'NORMAL'))
recipes[-1].add_energy('white', 50)

recipes.append(infusion('golden_magic_sword', inf_item('golden_sword', 'V'), 'ADVANCED'))
recipes[-1].add_energy('yellow', 50)
recipes[-1].add_energy('cyan', 10)
recipes[-1].add_energy('lime', 10)
recipes[-1].add_item(inf_item('item_energy_buffer', 'MIE'), 3)
recipes[-1].add_item(inf_item('item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('yellow_energy_block', 'MIE'), 5)
recipes[-1].add_item(inf_item('bio_essence', 'MIE'), 5)
recipes[-1].add_item(inf_item('hopper', 'V'), 2)

recipes.append(infusion('diamond_magic_sword', inf_item('diamond_sword', 'V'), 'ADVANCED'))
recipes[-1].add_energy('light_gray', 100)
recipes[-1].add_energy('red', 10)
recipes[-1].add_energy('magenta', 10)
recipes[-1].add_item(inf_item('advanced_item_energy_buffer', 'MIE'), 3)
recipes[-1].add_item(inf_item('advanced_item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('blue_energy_block', 'MIE'), 10)
recipes[-1].add_item(inf_item('obsidian_crystal', 'MIE'), 1)
recipes[-1].add_item(inf_item('wooden_sword', 'V'), 1)
recipes[-1].add_item(inf_item('stone_sword', 'V'), 1)
recipes[-1].add_item(inf_item('iron_sword', 'V'), 1)

recipes.append(infusion('sheep_helmet', inf_item('diamond_helmet', 'V'), 'ADVANCED'))
recipes[-1].add_energy('white', 20)
recipes[-1].add_energy('orange', 20)
recipes[-1].add_energy('magenta', 20)
recipes[-1].add_energy('light_blue', 20)
recipes[-1].add_energy('yellow', 20)
recipes[-1].add_energy('lime', 20)
recipes[-1].add_energy('pink', 20)
recipes[-1].add_energy('gray', 20)
recipes[-1].add_energy('light_gray', 20)
recipes[-1].add_energy('cyan', 20)
recipes[-1].add_energy('purple', 20)
recipes[-1].add_energy('blue', 20)
recipes[-1].add_energy('brown', 20)
recipes[-1].add_energy('green', 20)
recipes[-1].add_energy('red', 20)
recipes[-1].add_energy('black', 20)
recipes[-1].add_item(inf_item('advanced_item_energy_buffer', 'MIE'), 3)
recipes[-1].add_item(inf_item('advanced_item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('micro_field_generateor', 'MIE'), 2)
recipes[-1].add_item(inf_item('fibre', 'MIE'), 3)
recipes[-1].add_item(inf_item('sap', 'MIE'), 3)

recipes.append(infusion('sheep_chestplate', inf_item('diamond_chestplate', 'V'), 'ADVANCED'))
recipes[-1].add_energy('white', 20)
recipes[-1].add_energy('orange', 20)
recipes[-1].add_energy('magenta', 20)
recipes[-1].add_energy('light_blue', 20)
recipes[-1].add_energy('yellow', 20)
recipes[-1].add_energy('lime', 20)
recipes[-1].add_energy('pink', 20)
recipes[-1].add_energy('gray', 20)
recipes[-1].add_energy('light_gray', 20)
recipes[-1].add_energy('cyan', 20)
recipes[-1].add_energy('purple', 20)
recipes[-1].add_energy('blue', 20)
recipes[-1].add_energy('brown', 20)
recipes[-1].add_energy('green', 20)
recipes[-1].add_energy('red', 20)
recipes[-1].add_energy('black', 20)
recipes[-1].add_item(inf_item('advanced_item_energy_buffer', 'MIE'), 3)
recipes[-1].add_item(inf_item('advanced_item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('micro_field_generateor', 'MIE'), 2)
recipes[-1].add_item(inf_item('light_shell', 'MIE'), 3)
recipes[-1].add_item(inf_item('glue', 'MIE'), 3)

recipes.append(infusion('sheep_leggings', inf_item('diamond_leggings', 'V'), 'ADVANCED'))
recipes[-1].add_energy('white', 20)
recipes[-1].add_energy('orange', 20)
recipes[-1].add_energy('magenta', 20)
recipes[-1].add_energy('light_blue', 20)
recipes[-1].add_energy('yellow', 20)
recipes[-1].add_energy('lime', 20)
recipes[-1].add_energy('pink', 20)
recipes[-1].add_energy('gray', 20)
recipes[-1].add_energy('light_gray', 20)
recipes[-1].add_energy('cyan', 20)
recipes[-1].add_energy('purple', 20)
recipes[-1].add_energy('blue', 20)
recipes[-1].add_energy('brown', 20)
recipes[-1].add_energy('green', 20)
recipes[-1].add_energy('red', 20)
recipes[-1].add_energy('black', 20)
recipes[-1].add_item(inf_item('advanced_item_energy_buffer', 'MIE'), 3)
recipes[-1].add_item(inf_item('advanced_item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('micro_field_generateor', 'MIE'), 2)
recipes[-1].add_item(inf_item('heavy_shell', 'MIE'), 3)
recipes[-1].add_item(inf_item('prismarine_baffle', 'MIE'), 3)

recipes.append(infusion('sheep_boots', inf_item('diamond_boots', 'V'), 'ADVANCED'))
recipes[-1].add_energy('white', 20)
recipes[-1].add_energy('orange', 20)
recipes[-1].add_energy('magenta', 20)
recipes[-1].add_energy('light_blue', 20)
recipes[-1].add_energy('yellow', 20)
recipes[-1].add_energy('lime', 20)
recipes[-1].add_energy('pink', 20)
recipes[-1].add_energy('gray', 20)
recipes[-1].add_energy('light_gray', 20)
recipes[-1].add_energy('cyan', 20)
recipes[-1].add_energy('purple', 20)
recipes[-1].add_energy('blue', 20)
recipes[-1].add_energy('brown', 20)
recipes[-1].add_energy('green', 20)
recipes[-1].add_energy('red', 20)
recipes[-1].add_energy('black', 20)
recipes[-1].add_item(inf_item('advanced_item_energy_buffer', 'MIE'), 3)
recipes[-1].add_item(inf_item('advanced_item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('micro_field_generateor', 'MIE'), 2)
recipes[-1].add_item(inf_item('heavy_shell', 'MIE'), 3)
recipes[-1].add_item(inf_item('solid_fuel', 'MIE'), 3)
























# 文件模板
file_n_lock_core_items = 'execute as @e[type=item,tag=!mie_item_inf_locked,nbt={{OnGround:1b,Item:{{{0}}}}}] at @s unless entity @e[type=item,tag=mie_item_ainf_core_locked,distance=0.0001..5] if block ~ ~ ~ lectern run function miecraft:crafting/infusion/lock/core_item'
file_a_lock_core_items = 'execute as @e[type=item,tag=!mie_item_ainf_locked,nbt={{OnGround:1b,Item:{{{0}}}}}] at @s unless entity @e[type=item,tag=mie_item_ainf_core_locked,distance=0.0001..10] if block ~ ~ ~ lectern run function miecraft:crafting/advanced_infusion/lock/core_item'
file_a_lock_other_items = 'execute as @e[type=item,tag=!mie_item_ainf_locked,nbt={{OnGround:1b,Item:{{{0}}}}}] at @s unless entity @e[type=item,tag=mie_item_ainf_locked,distance=0.0001...7] if block ~ ~ ~ #minecraft:slabs run function miecraft:crafting/advanced_infusion/lock/other_item'
path_n_lock_core_items = 'data/miecraft/functions/crafting/infusion/lock/lock_core_items.mcfunction'
path_a_lock_core_items = 'data/miecraft/functions/crafting/advanced_infusion/lock/lock_core_items.mcfunction'
path_a_lock_other_items = 'data/miecraft/functions/crafting/advanced_infusion/lock/lock_other_items.mcfunction'



file_n_core_items_add_energy = 'execute if entity @s[nbt={{Item:{{{0}}}}}] run function miecraft:crafting/infusion/recipes/{1}/energy'
file_a_core_items_add_energy = 'execute if entity @s[nbt={{Item:{{{0}}}}}] run function miecraft:crafting/advanced_infusion/recipes/{1}/energy'
path_n_core_items_add_energy = 'data/miecraft/functions/crafting/infusion/lock/core_items_add_energy.mcfunction'
path_a_core_items_add_energy = 'data/miecraft/functions/crafting/advanced_infusion/lock/core_items_add_energy.mcfunction'

file_loot_items = 'execute if entity @s[nbt={{Item:{{{0}}}}}] at @s run loot spawn ~ ~ ~ loot miecraft:items/{1}'
path_n_loot_items = 'data/miecraft/functions/crafting/infusion/process/loot_items.mcfunction'
path_a_loot_items = 'data/miecraft/functions/crafting/advanced_infusion/process/loot_items.mcfunction'


# 初始化所有文件
content_n_lock_core_items = ''
content_a_lock_core_items = ''
content_a_lock_other_items = ''
content_n_core_items_add_energy = ''
content_a_core_items_add_energy = ''
content_n_loot_items = ''
content_a_loot_items = ''
# 辅助物品列表
other_items_list = []
# 写简单文件
for recipe in recipes:
    if recipe.type == 'NORMAL':
        content_n_lock_core_items += file_n_lock_core_items.format(recipe.core.parse())
        content_n_lock_core_items += '\n'
        content_n_core_items_add_energy += file_n_core_items_add_energy.format(recipe.core.parse(), recipe.name)
        content_n_core_items_add_energy += '\n'
        content_n_loot_items += file_loot_items.format(recipe.core.parse(), recipe.name)
        content_n_loot_items += '\n'
        content_a_lock_core_items += file_a_lock_core_items.format(recipe.core.parse())
        content_a_lock_core_items += '\n'
        content_a_core_items_add_energy += file_n_core_items_add_energy.format(recipe.core.parse(), recipe.name)
        content_a_core_items_add_energy += '\n'
        content_a_loot_items += file_loot_items.format(recipe.core.parse(), recipe.name)
        content_a_loot_items += '\n'
    if recipe.type == 'ADVANCED':    
        content_a_lock_core_items += file_a_lock_core_items.format(recipe.core.parse())
        content_a_lock_core_items += '\n'
        content_a_core_items_add_energy += file_a_core_items_add_energy.format(recipe.core.parse(), recipe.name)
        content_a_core_items_add_energy += '\n'
        content_a_loot_items += file_loot_items.format(recipe.core.parse(), recipe.name)
        content_a_loot_items += '\n'
        # 注册辅助物品列表
        for a_item in recipe.item_list:
            flag = 0
            for other_item in other_items_list:
                if a_item[0].name == other_item.name and a_item[0].namespace == other_item.namespace:
                    flag = 1
            if flag == 0:
                other_items_list.append(a_item[0])

# 写辅助物品
for other_item in other_items_list:
    content_a_lock_other_items += file_a_lock_other_items.format(other_item.parse())
    content_a_lock_other_items += '\n'




# 文件模板
path_n_energy = 'data/miecraft/functions/crafting/infusion/recipes/{}/energy.mcfunction'
path_a_energy = 'data/miecraft/functions/crafting/advanced_infusion/recipes/{}/energy.mcfunction'
path_n_recipe_dir = 'data/miecraft/functions/crafting/infusion/recipes/{}/'
path_a_recipe_dir = 'data/miecraft/functions/crafting/advanced_infusion/recipes/{}/'
path_a_all_items = 'data/miecraft/functions/crafting/advanced_infusion/recipes/items.mcfunction'
path_a_items = 'data/miecraft/functions/crafting/advanced_infusion/recipes/{}/items.mcfunction'

file_n_energy = 'scoreboard players set @s {} {:d}'
file_a_energy = 'scoreboard players set @s {} {:d}'
file_a_all_items = '''# 初始化
scoreboard players set @s mie_temp1 0
scoreboard players set @s mie_temp2 0
scoreboard players set @s mie_temp3 0
execute at @s align xyz positioned ~-2 ~ ~-2 run tag @e[type=item,tag=mie_item_ainf_other_locked,dx=5,dy=1,dz=5] add mie_item_temp
# 物品判定
{}
# 清除
tag @s remove mie_item_temp
'''
file_a_all_items_one = 'execute if entity @s[nbt={{Item:{{{}}}}}] run function miecraft:crafting/advanced_infusion/recipes/{}/items'
file_n_all_items_one = 'execute if entity @s[nbt={{Item:{{{}}}}}] run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1'

file_a_items = '''
# 保存每个锁定物品的数量
execute as @e[type=item,tag=mie_item_temp] store result score @s mie_temp1 run data get entity @s Item.Count

# 初始化
scoreboard players set @s mie_temp3 0
# 确定所有物品数量 (2用于判断是否满足，3用来判断总类型数量)
{}
# 判断总数
execute if score @s mie_temp3 matches {:d} run scoreboard players set @p[tag=mie_player_temp] mie_temp1 1
'''
file_a_items_one = '''
scoreboard players set @s mie_temp2 0
scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={{Item:{{{}}}}}] mie_temp1
execute if score @s mie_temp2 matches {:d} run scoreboard players add @s mie_temp3 1
'''






content_a_all_items = ''
# 写入能量和物品需求
for recipe in recipes:
    if recipe.type == 'NORMAL':
        # 创建文件夹
        if not os.path.isdir(path_n_recipe_dir.format(recipe.name)):
            os.mkdir(path_n_recipe_dir.format(recipe.name))
        # 普通只写入能量和一条物品
        content_n_energy = ''
        for energy in recipe.energy:
            content_n_energy += file_n_energy.format(energy[0], energy[1])
            content_n_energy += '\n'
        with open(path_n_energy.format(recipe.name), 'w', encoding='utf-8') as f:
            f.write(content_n_energy)
        # 一条物品
        content_a_all_items += file_n_all_items_one.format(recipe.core.parse())
        content_a_all_items += '\n'
    if recipe.type == 'ADVANCED':
        # 创建文件夹
        if not os.path.isdir(path_a_recipe_dir.format(recipe.name)):
            os.mkdir(path_a_recipe_dir.format(recipe.name))
        # 写入能量
        content_a_energy = ''
        for energy in recipe.energy:
            content_a_energy += file_a_energy.format(energy[0], energy[1])
            content_a_energy += '\n'
        with open(path_a_energy.format(recipe.name), 'w', encoding='utf-8') as f:
            f.write(content_a_energy)
        # 一条物品
        content_a_all_items += file_a_all_items_one.format(recipe.core.parse(), recipe.name)
        content_a_all_items += '\n'
        # 写入物品
        content_a_items = ''
        num = 0
        for a_item in recipe.item_list:
            content_a_items += file_a_items_one.format(a_item[0].parse(), a_item[1])
            content_a_items += '\n'
            num += 1
        with open(path_a_items.format(recipe.name), 'w', encoding='utf-8') as f:
            f.write(file_a_items.format(content_a_items, num))


content_a_all_items = file_a_all_items.format(content_a_all_items)
















with open(path_n_lock_core_items, 'w', encoding='utf-8') as f:
    f.write(content_n_lock_core_items)
with open(path_n_core_items_add_energy, 'w', encoding='utf-8') as f:
    f.write(content_n_core_items_add_energy)
with open(path_n_loot_items, 'w', encoding='utf-8') as f:
    f.write(content_n_loot_items)
with open(path_a_lock_core_items, 'w', encoding='utf-8') as f:
    f.write(content_a_lock_core_items)
with open(path_a_lock_other_items, 'w', encoding='utf-8') as f:
    f.write(content_a_lock_other_items)
with open(path_a_core_items_add_energy, 'w', encoding='utf-8') as f:
    f.write(content_a_core_items_add_energy)
with open(path_a_loot_items, 'w', encoding='utf-8') as f:
    f.write(content_a_loot_items)
with open(path_a_all_items, 'w', encoding='utf-8') as f:
    f.write(content_a_all_items)