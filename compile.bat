@echo off
chcp 65001 >nul
echo ====================================
echo   赣南科技学院毕业论文编译脚本
echo ====================================
echo.

echo [1/3] 第一次编译...
xelatex -interaction=nonstopmode main.tex
if %errorlevel% neq 0 (
    echo 编译失败！请检查错误信息。
    pause
    exit /b 1
)

echo.
echo [2/3] 第二次编译（生成目录）...
xelatex -interaction=nonstopmode main.tex

echo.
echo [3/3] 第三次编译（更新引用）...
xelatex -interaction=nonstopmode main.tex

echo.
echo ====================================
echo   编译完成！
echo ====================================
echo.
echo 生成的PDF文件：main.pdf
echo.

REM 清理临时文件
echo 正在清理临时文件...
del /q *.aux *.log *.toc *.out *.synctex.gz 2>nul

echo 清理完成！
echo.
pause


