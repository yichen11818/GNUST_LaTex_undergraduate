@echo off
chcp 65001 >nul
echo ====================================
echo   初始化论文模板文件夹
echo ====================================
echo.

REM 创建图片文件夹
if not exist "figures" (
    mkdir figures
    echo [✓] 创建 figures 文件夹
) else (
    echo [!] figures 文件夹已存在
)

REM 创建示例图片说明文件
if not exist "figures\README.txt" (
    echo 请将论文中使用的图片放在此文件夹中 > figures\README.txt
    echo. >> figures\README.txt
    echo 支持的图片格式：PNG, JPG, PDF >> figures\README.txt
    echo. >> figures\README.txt
    echo 示例： >> figures\README.txt
    echo   - 图片文件名：example.png >> figures\README.txt
    echo   - 在LaTeX中引用：\includegraphics{figures/example.png} >> figures\README.txt
    echo [✓] 创建图片文件夹说明
)

echo.
echo ====================================
echo   初始化完成！
echo ====================================
echo.
echo 文件夹结构：
echo   ├── main.tex          (主文档)
echo   ├── figures/          (图片文件夹)
echo   ├── compile.bat       (编译脚本)
echo   ├── setup.bat         (本脚本)
echo   └── README.md         (使用说明)
echo.
echo 下一步：
echo   1. 打开 main.tex 修改论文信息
echo   2. 将图片放入 figures 文件夹
echo   3. 运行 compile.bat 编译论文
echo.
pause





