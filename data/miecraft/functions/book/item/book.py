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
    def append(self, content):
        self.content += content

class ref:
    def __init__(self, page_num, name, level):
        self.num = page_num
        self.name = name
        self.level = level
    def print(self):
        print('页码：{}，引用级别：{}，标题：{}'.format(self.num, self.level, self.name))
    def shift(self, num):
        self.num += num


book_pre = 'summon minecraft:item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:written_book",Count:1,tag:{mie_id:"magic_book",mie_data1:"0.2.0",mie_data2:[1],mie_data3:1,CustomModelData:13950200,display:{Name:\'{"text":"羊羊大百科魔法书","color":"yellow","italic":false}\'},author:"羊羊科学家:K_bai",title:"羊羊大百科魔法书",pages:['
book_sub = ']}}}'

clickevent = r' ",{{"text":"§n§l{0}§r","hoverEvent":{{"action":"show_text","value":[{{"translate":"item.mie.book.jumpto_pre"}},"{1}",{{"translate":"item.mie.book.jumpto_sub"}}]}},"clickEvent":{{"action":"change_page","value":"{2:d}"}}}}," '
clickevent2 = r'",{{"text":"§n§l{0}§r","hoverEvent":{{"action":"show_text","value":[{{"translate":"item.mie.book.jumpto_pre"}},"{1}",{{"translate":"item.mie.book.jumpto_sub"}}]}},"clickEvent":{{"action":"change_page","value":"{2:d}"}}}}," '

page_pre = '\'["  [  ",{{"text":"§f\\\\ue600","hoverEvent":{{"action":"show_text","value":"入门教程"}},"clickEvent":{{"action":"change_page","value":"{0[0]:d}"}}}},"  ",{{"text":"§f\\\\ue601","hoverEvent":{{"action":"show_text","value":"多方块结构"}},"clickEvent":{{"action":"change_page","value":"{0[1]:d}"}}}},"  ",{{"text":"§f\\\\ue602","hoverEvent":{{"action":"show_text","value":"物品列表"}},"clickEvent":{{"action":"change_page","value":"{0[2]:d}"}}}},"  ",{{"text":"§f\\\\ue603","hoverEvent":{{"action":"show_text","value":"返回"}},"clickEvent":{{"action":"run_command","value":"/trigger mie_book_jump set 1"}}}},"  §0]","\\\\n§f\\\\ue604\\\\n§r'

page_sub = '"]\','



with open("book_pages.txt", 'r', encoding='utf-8') as f:
    lst = f.readlines()
    # 解析文件
    book = []
    page_num = 0
    for line in lst:
        if line == "\n":
            continue
        if line[0] == '@':
            chapter = line
            chapter = chapter[1:]
            book.append(ref(page_num+1, chapter.strip(), 0))
        elif line[0] == '#':
            chapter = line
            ref_level = 0
            while chapter[0] == '#':
                ref_level += 1
                chapter = chapter[1:]
            book.append(ref(page_num+1, chapter.strip(), ref_level))
        elif line[0] == '^':
            book[-1].append(line[1:].strip())
        else:
            page_num += 1
            book.append(a_page(page_num, line.strip()))




# 记录三章页数
chapter_p = []
for page in book:
    if isinstance(page, ref) and page.level == 0:
        chapter_p.append(page.num)
page_pre = page_pre.format(chapter_p)

# 渲染页面
output = ''
for i in range(len(book)):
    # 渲染标题
    if isinstance(book[i], ref):
        continue
    output += page_pre
    if isinstance(book[i-1], ref) and book[i-1].level != 0:
        output += '§l{}§r\\\\n\\\\n'.format(book[i-1].name)
    if isinstance(book[i], a_page):
        content = book[i].content
        # 正则匹配超链接
        pattern = re.compile(r'{([^{]+)::([^}]+)}')
        while re.search(pattern, content):
            match = re.search(pattern, content)
            name = match.group(1)
            ref_name = match.group(2)
            ref_num = 0
            for page in book:
                if isinstance(page, ref):
                    if page.name == ref_name:
                        ref_num = page.num
            if name[0] == '§':
                content = re.sub(pattern, clickevent2.format(name, ref_name, ref_num), content, count=1)
            else:
                content = re.sub(pattern, clickevent.format(name, ref_name, ref_num), content, count=1)
        # 渲染内容
        output += content
    output += page_sub
print(output)





with open('book.mcfunction', 'w', encoding='utf-8') as f:
    f.write(book_pre+output+book_sub)
