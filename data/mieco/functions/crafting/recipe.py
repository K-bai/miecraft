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
    total_num = 13950800
    def __init__(self, item_name, core, inf_type):
        self.name = item_name
        self.core = core
        infusion.total_num += 1
        self.num = infusion.total_num
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

recipes.append(infusion('portable_sheep_nmr', inf_item('portable_machine_frame', 'MIE'), 'ADVANCED'))
recipes[-1].add_energy('white', 40)
recipes[-1].add_item(inf_item('light_shell', 'MIE'), 1)
recipes[-1].add_item(inf_item('bio_essence', 'MIE'), 1)
recipes[-1].add_item(inf_item('wooden_handle', 'MIE'), 1)
recipes[-1].add_item(inf_item('item_energy_controller', 'MIE'), 1)
recipes[-1].add_item(inf_item('circuit', 'MIE'), 2)
recipes[-1].add_item(inf_item('small_display_panel', 'MIE'), 1)

recipes.append(infusion('sweet_wheat', inf_item('wheat', 'V'), 'NORMAL'))
recipes[-1].add_energy('orange', 2)























# 文件模板
# 物品锁定模板和路径
file_n_lock_items = 'tag @s[nbt={{Item:{{{0}}}}}] add mie_lock_temp'
path_n_lock_core_items = 'infusion/main/lock_core_items.mcfunction'
path_a_lock_core_items = 'advanced_infusion/main/lock_core_items.mcfunction'
path_a_lock_other_items = 'advanced_infusion/main/lock_other_items.mcfunction'
# 能量需求模板和路径
file_n_core_items_add_energy = 'execute if entity @s[nbt={{Item:{{{0}}}}}] run function mieco:crafting/infusion/recipes/{1}/energy'
file_a_core_items_add_energy = 'execute if entity @s[scores={{mie_item_inf_id={0}}}] run function mieco:crafting/advanced_infusion/recipes/{1}/energy'
path_n_core_items_add_energy = 'infusion/main/energy_demand.mcfunction'
path_a_core_items_add_energy = 'advanced_infusion/main/energy_demand.mcfunction'
# 生成物品模板和路径
file_n_loot_items = 'execute if entity @s[nbt={{Item:{{{0}}}}}] at @s run loot spawn ~ ~ ~ loot mieco:items/{1}'
file_a_loot_items = 'execute if entity @s[scores={{mie_item_inf_id={0}}}] at @s run loot spawn ~ ~ ~ loot mieco:items/{1}'
path_n_loot_items = 'infusion/main/loot_items.mcfunction'
path_a_loot_items = 'advanced_infusion/main/loot_items.mcfunction'


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
        content_n_lock_core_items += file_n_lock_items.format(recipe.core.parse())
        content_n_lock_core_items += '\n'
        content_n_core_items_add_energy += file_n_core_items_add_energy.format(recipe.core.parse(), recipe.name)
        content_n_core_items_add_energy += '\n'
        content_n_loot_items += file_n_loot_items.format(recipe.core.parse(), recipe.name)
        content_n_loot_items += '\n'
        content_a_lock_core_items += file_n_lock_items.format(recipe.core.parse())
        content_a_lock_core_items += '\n'
        content_a_core_items_add_energy += file_n_core_items_add_energy.format(recipe.core.parse(), recipe.name)
        content_a_core_items_add_energy += '\n'
        content_a_loot_items += file_n_loot_items.format(recipe.core.parse(), recipe.name)
        content_a_loot_items += '\n'
    if recipe.type == 'ADVANCED':    
        content_a_lock_core_items += file_n_lock_items.format(recipe.core.parse())
        content_a_lock_core_items += '\n'
        content_a_core_items_add_energy += file_a_core_items_add_energy.format(recipe.num, recipe.name)
        content_a_core_items_add_energy += '\n'
        content_a_loot_items += file_a_loot_items.format(recipe.num, recipe.name)
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
    content_a_lock_other_items += file_n_lock_items.format(other_item.parse())
    content_a_lock_other_items += '\n'




# 文件模板
path_n_energy = 'infusion/recipes/{}/energy.mcfunction'
path_a_energy = 'advanced_infusion/recipes/{}/energy.mcfunction'
path_n_recipe_dir = 'infusion/recipes/{}/'
path_a_recipe_dir = 'advanced_infusion/recipes/{}/'

path_n_all_items = 'infusion/main/advanced_infusion_interface.mcfunction'
path_a_all_items = 'advanced_infusion/main/other_items_detect.mcfunction'

path_a_items = 'advanced_infusion/recipes/{}/items.mcfunction'

file_n_energy = 'scoreboard players set @s {} {:d}'
file_a_energy = 'scoreboard players set @s {} {:d}'

file_a_all_items_one = 'execute if entity @s[nbt={{Item:{{{}}}}}] run function mieco:crafting/advanced_infusion/recipes/{}/items'
file_n_all_items_one = 'execute if entity @s[nbt={{Item:{{{}}}}}] run tag @s add mie_item_complete'

file_a_items = '''
# 保存每个锁定物品的数量
execute as @e[type=item,tag=mie_item_temp] store result score @s mie_temp1 run data get entity @s Item.Count

# 初始化
scoreboard players set @s mie_temp3 0
# 确定所有物品数量 (2用于判断是否满足，3用来判断总类型数量)
{0}
# 判断总数
execute if score @s mie_temp3 matches {1:d} run tag @s add mie_item_complete
execute if score @s mie_temp3 matches {1:d} run scoreboard players set @s mie_item_inf_id {2:d}
'''
file_a_items_one = '''
scoreboard players set @s mie_temp2 0
scoreboard players operation @s mie_temp2 += @e[type=item,tag=mie_item_temp,nbt={{Item:{{{}}}}}] mie_temp1
execute if score @s mie_temp2 matches {:d} run scoreboard players add @s mie_temp3 1
'''






content_a_all_items = ''
content_n_all_items = ''
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
        content_n_all_items += file_n_all_items_one.format(recipe.core.parse())
        content_n_all_items += '\n'
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
            f.write(file_a_items.format(content_a_items, num, recipe.num))


















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
with open(path_n_all_items, 'w', encoding='utf-8') as f:
    f.write(content_n_all_items)