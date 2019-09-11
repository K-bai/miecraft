import re
import math
# 一行对应一页
# 井号开头表示标题 顺便创建超链接 井号个数表示目录层数

class a_page:
    def __init__(self, page_num, content):
        self.num = page_num
        self.content = content
    def print(self):
        print('页码：{}，内容：{}'.format(self.num, self.content))
    def shift(self, num):
        self.num += num

class ref:
    def __init__(self, page_num, name, level):
        self.num = page_num
        self.name = name
        self.level = level
    def print(self):
        print('页码：{}，引用级别：{}，标题：{}'.format(self.num, self.level, self.name))
    def shift(self, num):
        self.num += num


book_pre = 'summon minecraft:item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:written_book",Count:1,tag:{mie_id:"magic_book",CustomModelData:13950200,display:{Name:\'{"text":"羊羊大百科魔法书","color":"yellow","italic":false}\'},author:"羊羊科学家:K_bai",title:"羊羊大百科魔法书",pages:['
book_sub = ']}}}'

table_item = '",{{"text":"§n{0}§r","hoverEvent":{{"action":"show_text","value":[{{"translate":"item.mie.book.jumpto_pre"}},"{1:d}",{{"translate":"item.mie.book.jumpto_sub"}}]}},"clickEvent":{{"action":"change_page","value":"{1:d}"}}}},"'
clickevent = '",{{"text":"§n§o{0}§r","hoverEvent":{{"action":"show_text","value":[{{"translate":"item.mie.book.jumpto_pre"}},"{1:d}",{{"translate":"item.mie.book.jumpto_sub"}}]}},"clickEvent":{{"action":"change_page","value":"{1:d}"}}}},"'

page_pre = '\'["'
page_sub = '"]\','

output = ''
with open("book_pages.txt", 'r', encoding='utf-8') as f:
    lst = f.readlines()
    # 首先建立超链接和页数对应表
    book = []
    page_num = 0
    for line in lst:
        if line == "\n":
            continue
        if line[0] != '#':
            page_num += 1
            book.append(a_page(page_num, line.strip()))
        else:
            chapter = line
            ref_level = 0
            while chapter[0] == '#':
                ref_level += 1
                chapter = chapter[1:]
            book.append(ref(page_num+1, chapter.strip(), ref_level))

    # 计算目录总页数
    table_num = 0
    for page in book:
        if isinstance(page, ref):
            table_num += 1
    table_page = math.ceil(table_num/14)
    # 偏移页码
    for page in book:
        page.shift(table_page)
    # 渲染目录
    output += page_pre
    output += '§l目录§r\\\\n\\\\n'
    line_count = 2
    for page in book:
        if isinstance(page, ref):
            level = page.level
            while level >= 2:
                output += '  '
                level -= 1
            output += table_item.format(page.name, page.num)
            output += '\\\\n'
            line_count += 1
        else:
            continue
        if line_count >= 14:
            line_count = 0
            output += page_sub
            output += page_pre
    output += page_sub
    # 渲染页面
    for i in range(len(book)):
        # 渲染标题
        if isinstance(book[i], ref):
            continue
        output += page_pre
        if isinstance(book[i-1], ref):
            output += '§l{}§r\\\\n\\\\n'.format(book[i-1].name)
        if isinstance(book[i], a_page):
            content = book[i].content
            # 正则匹配超链接
            pattern = re.compile(r'{(.+)::(.+)}')
            while re.search(pattern, content):
                match = re.search(pattern, content)
                name = match.group(1)
                ref_name = match.group(2)
                ref_num = 0
                for page in book:
                    if isinstance(page, ref):
                        if page.name == ref_name:
                            ref_num = page.num
                content = re.sub(pattern, clickevent.format(name, ref_num), content, count=1)
            # 渲染内容
            output += content
        output += page_sub
    print(output)



with open('book.mcfunction', 'w', encoding='utf-8') as f:
    f.write(book_pre+output+book_sub)