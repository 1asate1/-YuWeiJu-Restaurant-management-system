# 余味居小快餐店管理系统（ASP.NET Web Forms）

本项目是一个基于 C# + ASP.NET Web Forms + .NET Framework 4.7.2 的课程项目，用于小型快餐店的后台管理。

## 功能概览

- 登录与基础权限入口
- 菜品管理（新增、编辑）
- 员工管理（新增、编辑）
- 客户管理（新增、编辑）
- 订单管理
- 统计管理
- 密码修改

## 技术栈

- C#
- ASP.NET Web Forms
- .NET Framework 4.7.2
- ODBC 连接 MySQL
- Visual Studio（Web Application 项目）

## 项目结构

```text
restaurant/
├─ ckgl3/                         # 网站主项目
│  ├─ admin/                      # 后台页面（菜品/员工/客户/订单/统计等）
│  ├─ image/                      # 页面图片资源
│  ├─ App_Data/DB.cs              # 数据库连接代码
│  ├─ Web.config                  # 配置与连接字符串
│  ├─ restaurant.csproj
│  └─ restaurant.sln
├─ restaurant.sql                 # 数据库脚本（推荐优先使用）
├─ ckgl.sql                       # 备选数据库脚本
└─ 余味居小快餐店管理系统说明书.pdf   # 课程报告
```

## 运行方式

1. 使用 Visual Studio 打开 `ckgl3/restaurant.sln`。
2. 确保本机已安装：
   - .NET Framework 4.7.2 开发环境
   - MySQL
   - MySQL ODBC Driver（与 `DB.cs` 中 Driver 名称匹配）
3. 导入数据库脚本（建议 `restaurant.sql`）。
4. 配置数据库连接：
   - `ckgl3/Web.config`
   - `ckgl3/App_Data/DB.cs`
5. 将 `YOUR_DB_PASSWORD` 替换为你本机数据库密码后运行。

## GitHub 上传建议

建议上传：
- `ckgl3/` 下源码文件（`.aspx`、`.cs`、`.master`、配置文件等）
- `restaurant.sln`、`restaurant.csproj`
- `.sql` 数据库脚本
- `README.md`
- 报告 PDF（可选）

建议不要上传：
- 编译产物：`bin/`、`obj/`
- IDE 缓存：`.vs/`、`*.user`、`*.suo`
- 本地数据库二进制：`*.accdb`、`*.mdf`、`*.ldf` 等
- 明文密码和私密连接信息

## 关于课程报告 PDF

`余味居小快餐店管理系统说明书.pdf` 可以直接放在仓库中，GitHub 支持在线预览 PDF（包含图片）。

如果你后续想把报告完整转换成 Markdown 版 README（包含图片分节展示），可以再做一次文档拆分与图片导出。

