# 脚本自动完成
`recipe.py`可自定义注魔配方，内容简单易懂


# 羊羊注魔台
## 添加核心物品锁定

* `miecraft:crafting/infusion/lock/main`
    * 第一行添加条件

## 添加核心物品所需能量

* `miecraft:crafting/infusion/lock/core_item`
    * 增加一条加能量命令
* `miecraft:crafting/infusion/recipes/xxxx`
    * 添加新文件夹，下加`energy.mcfunction`，可参考其他

## 添加完成品

* `miecraft:items/`
    * 添加生成物品战利品表
* `miecraft:crafting/infusion/process/success`
    * 添加调用生成物品函数

## 添加高级羊羊注魔台配方
### 高级羊羊注魔台核心物品锁定

* `miecraft:crafting/advanced_infusion/lock/main`
    * 第一行添加条件

### 高级羊羊注魔台核心物品所需能量

* `miecraft:crafting/advanced_infusion/lock/core_item`
    * 增加一条加能量命令

### 高级羊羊注魔台辅助物品判定

* `miecraft:crafting/advanced_infusion/recipes/items`
    * 新增直接达成条件命令，可参考其他

### 高级羊羊注魔台添加完成品

* `miecraft:crafting/advanced_infusion/process/success`
    * 添加调用生成物品函数




# 高级羊羊注魔台
## 添加核心物品及辅助物品锁定

* `miecraft:crafting/advanced_infusion/lock/main`
    * 第一行添加条件

## 添加核心物品所需能量

* `miecraft:crafting/advanced_infusion/lock/core_item`
    * 增加一条加能量命令
* `miecraft:crafting/advanced_infusion/recipes/xxxx`
    * 添加新文件夹，下加`energy.mcfunction`，可参考其他

## 添加核心物品所需辅助物品

* `miecraft:crafting/advanced_infusion/recipes/xxxx`
    * 添加新文件夹，下加`items.mcfunction`，可参考其他
* `miecraft:crafting/advanced_infusion/recipes/items`
    * 链接至上一个函数，可参考其他

## 添加完成品

* `miecraft:items/`
    * 添加生成物品战利品表
* `miecraft:crafting/advanced_infusion/process/success`
    * 添加调用生成物品函数


# 命令实现流程

首先将放到注魔台上的物品锁定，每tick识别注魔台框架，条件：

* 核心物品
    * 物品在讲台方块中
    * 向下偏移一格识别框架
* 魔法罐
    * 物品在羊毛毯方块中
    * 向中心讲台偏移并向下偏移一格识别框架
* 框架
    * 中心3*3石砖
    * 外侧5*5边缘书架
    * 上方一格5*5边缘各色羊毛毯
        * 羊毛毯识别条件是，范围内每个都有且只有一个，并且在确切位置有羊毛毯

符合条件的物品加上一个暂时锁定的tag，有这个tag的物品无法移动，玩家站在上面一段时间可以取下。

只要锁定了核心物品，玩家右键了讲台，就进入注魔状态。以下是流程：

1. 给核心物品一个计时计分板（最高100tick），再给初始化一个粒子效果计分板，预先在物品里存好需要吸收的魔法的量
2. 每个tick内找第一个还不足的魔法罐，若没有就找第二个
    * 找到就吸收1点，并重置计时计分板，粒子效果计分板加1
        * 每次粒子效果计分板到1播放一个向中心的粒子效果并加1
        * 到20重置为0
    * 找不到就进入下一个tick，计时计分板+1
3. 结束条件
    * 计时计分板达到最大值，劈一道雷，提示失败
    * 所有需求均为0，注魔完成