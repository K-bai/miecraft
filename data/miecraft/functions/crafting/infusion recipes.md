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
    * 添加生成物品函数
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
    * 添加生成物品函数
* `miecraft:crafting/advanced_infusion/process/success`
    * 添加调用生成物品函数