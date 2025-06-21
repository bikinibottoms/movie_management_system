# 电影行业管理系统

## 项目简介

电影行业管理系统是 GROUP 19 在课程“数据库及其实现”制作的期末大作业，这是一个基于 Django 的 Web 应用程序，用于存储和管理电影、导演、演员、出品公司以及电影分类等信息。它通过 Web 界面提供了一种结构化的方式来组织和访问电影数据。

## 开发环境

### 操作系统
本项目可在多种操作系统上运行，建议使用以下操作系统：
- **Windows 10 及以上**
- **macOS 10.15 及以上**
- **Linux（如 Ubuntu 20.04 及以上）**

### 编程语言及版本
- **Python**：此项目需要在系统上安装 Python 3.x。你可以从官方网站下载 Python：[Python 下载](https://www.python.org/downloads/)。
- **Django**：项目使用 Django 5.2。你可以使用 `pip install django==5.2` 进行安装。

### 数据库版本
- **MySQL**：需要一个 MySQL 数据库服务器来存储电影数据。建议使用 MySQL 8.0 及以上版本，你可以从官方网站下载 MySQL：[MySQL 下载](https://dev.mysql.com/downloads/installer/)。

## 数据库初始化流程

### 1. 克隆仓库
```bash
git clone https://github.com/bikinibottoms/movie_management_system.git
cd movie_management_system
```

### 2. 创建虚拟环境
建议使用虚拟环境来管理项目的依赖项。
```bash
python -m venv venv
source venv/bin/activate  # 在 Windows 上使用 `venv\Scripts\activate`
```

### 3. 安装依赖项
```bash
pip install -r requirements.txt
```


### 4. 创建数据库
使用 MySQL 命令行或者 MySQL Workbench 等工具创建数据库：
```sql
CREATE DATABASE your_database;
```

### 5. 数据库配置
- 打开 `movie_management_system/settings.py` 文件。
- 使用你的 MySQL 数据库凭据更新 `DATABASES` 部分：
```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'your_database',  # 数据库名称
        'USER': 'your name',  # 用户名
        'PASSWORD': 'your password',  # 密码
        'HOST': 'your host',
        'PORT': 'your port',  # MySQL 服务器端口
        'OPTIONS': {
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
        },
    }
}
```

### 6. 应用数据库迁移
```bash
python manage.py makemigrations
python manage.py migrate
```

## 测试数据导入方法
项目根目录下提供了 `test_data.sql` 文件作为测试数据集，你可以按照以下步骤将其导入到数据库中：

### 方法一：使用 MySQL 命令行工具
打开终端，登录到 MySQL 服务器：
```bash
mysql -u your_username -p
```
输入密码后，切换到你创建的数据库：
```sql
USE your_database;
```
然后导入 `test_data.sql` 文件：
```sql
SOURCE /path/to/your/movie_management_system/test_data.sql;
```
请将 `/path/to/your/movie_management_system` 替换为项目的实际路径。

### 方法二：使用 MySQL Workbench
- 打开 MySQL Workbench，连接到你的 MySQL 服务器。
- 选择你创建的数据库。
- 在菜单栏中选择 `Server` > `Data Import`。
- 在 `Import Options` 中选择 `Import from Self-Contained File`，并选择 `test_data.sql` 文件。
- 点击 `Start Import` 开始导入数据。

## 项目运行步骤与使用方法

### 启动开发服务器
```bash
python manage.py runserver
```

### 访问应用程序
- 打开你的 Web 浏览器，访问 `http://127.0.0.1:8000/`。你将看到电影管理系统的主页。


### 管理数据
- 在各列表页面，可以对已录入的数据进行搜索、查看详情、编辑和删除操作。
- 对于关联数据（如导演与电影、演员与电影），可以在详情页进行关联关系的添加或移除。

## 小组成员分工说明

### [曹宇杰]
- 期中负责需求分析与E-R模型设计。
- 期末负责整体项目架构与数据测试，电影、导演、出品公司模块的实现以及期末汇报。

### [刘怀文]
- 期中负责SQL代码实现及测试。
- 期末负责演员模块的实现。

### [张凤鸣]
- 期中负责PPT制作与展示。
- 期末负责类型模块的实现。
