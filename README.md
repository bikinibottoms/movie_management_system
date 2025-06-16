# 电影管理系统

## 项目简介
电影管理系统是 GROUP 19 在课程“数据库及其实现”制作的期末大作业，这是一个基于 Django 的 Web 应用程序，用于存储和管理电影、导演、演员、出品公司以及电影分类等信息。它通过 Web 界面提供了一种结构化的方式来组织和访问电影数据。

## 功能特性
- **全面的电影数据管理**：管理电影的详细信息，如标题、上映日期、类型、导演、制作公司和演员。
- **模块化 URL 路由**：利用 Django 的 URL 路由系统，通过单独的应用 URL 处理不同类型的电影相关数据。
- **数据库集成**：连接到 MySQL 数据库以存储和检索电影信息。
- **模板支持**：支持 Django 模板来渲染网页，便于自定义用户界面。

## 环境要求
- **Python**：此项目需要在系统上安装 Python 3.x。你可以从官方网站下载 Python：[Python 下载](https://www.python.org/downloads/)。
- **Django**：项目使用 Django 5.2。你可以使用 `pip install django==5.2` 进行安装。
- **MySQL**：需要一个 MySQL 数据库服务器来存储电影数据。你可以从官方网站下载 MySQL：[MySQL 下载](https://dev.mysql.com/downloads/installer/)。

## 安装步骤
1. **克隆仓库**：
    ```bash
    git clone https://github.com/bikinibottoms/movie_management_system.git
    cd movie_management_system
    ```
2. **创建虚拟环境**：
    建议使用虚拟环境来管理项目的依赖项。
    ```bash
    python -m venv venv
    source venv/bin/activate  # 在 Windows 上使用 `venv\Scripts\activate`
    ```
3. **安装依赖项**：
    ```bash
    pip install -r requirements.txt
    ```
    注意：你可能需要创建一个 `requirements.txt` 文件，包含必要的包（例如 `django`, `django_select2`）。
4. **创建数据库**：
   ```sql
    CREATE DATABASE your_database;
    ```
5. **数据库配置**：
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
6. **应用数据库迁移**：
    ```bash
    python manage.py makemigrations
    python manage.py migrate
    ```


## 使用方法
1. **启动开发服务器**：
    ```bash
    python manage.py runserver
    ```
2. **访问应用程序**：
    - 打开你的 Web 浏览器，访问 `http://127.0.0.1:8000/`。你将看到电影管理系统的主页。
3. **探索应用程序**：
    - 导航到不同的部分，如 `电影`、`导演`、`出品公司`、`演员` 和 `类型`，以管理相应的电影相关数据。

## 项目结构
- **`movie_management_system/urls.py`**：定义整个项目的 URL 模式，将请求路由到不同的应用。
- **`movie_management_system/settings.py`**：包含项目的设置，包括数据库配置、已安装的应用和模板设置。
- **`movie_management_system/asgi.py`**：项目的 ASGI 配置，用于异步部署。
- **`movie_management_system/wsgi.py`**：项目的 WSGI 配置，用于传统的 Web 服务器部署。