file_list = [
    'item_energy_buffer',
    'advanced_item_energy_buffer',
    'item_energy_controller',
    'advanced_item_energy_controller',
]

content = '''{{
    "type": "minecraft:generic",
    "pools": [
        {{
            "rolls": 1,
            "entries": [
                {{
                    "type": "minecraft:item",
                    "name": "minecraft:fermented_spider_eye",
                    "functions": [
                        {{
                            "function": "minecraft:set_count",
                            "count": 1
                        }},
                        {{
                            "function": "minecraft:set_nbt",
                            "tag": "{{mie_id:\\"{0}\\",CustomModelData:{1:d}}}"
                        }},
                        {{
                            "function": "minecraft:set_name",
                            "name": {{"translate":"item.mie.name.{0}"}}
                        }},
                        {{
                            "function": "minecraft:set_lore",
                            "lore": [
                                {{"translate":"item.mie.lore0.{0}"}}
                            ]
                        }}
                    ]
                }}
            ]
        }}
    ]
}}
'''

num = 13950732
for name in file_list:
    with open(name+'.json', 'w') as f:
        f.write(content.format(name, num))
        num += 1