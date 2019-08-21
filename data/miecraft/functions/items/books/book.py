output = 'summon minecraft:item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:written_book",Count:1,tag:{mie_id:2,CustomModelData:13950200,display:{Name:\'{"text":"羊羊大百科魔法书","color":"yellow","italic":false}\'},author:"羊羊科学家:K_bai",title:"羊羊大百科魔法书",pages:['
subfix = ']}}}'

with open("book_pages.txt", 'r', encoding='utf-8') as f:
    lst = f.readlines()
    for line in lst:
        if line[0] == "#":
            continue
        if line.strip() != "\n":
            output += line.strip()

output += subfix


with open('book.mcfunction', 'w', encoding='utf-8') as f:
    f.write(output)