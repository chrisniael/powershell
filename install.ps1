# 获取 $PROFILE 的目录部分
$profileDir = [System.IO.Path]::GetDirectoryName($PROFILE)

# 创建该目录及其所有必要的父目录
New-Item -ItemType Directory -Path $profileDir -Force

# 获取当前工作目录
$currentDirectory = Get-Location

# 定义源文件和目标文件路径
$source = Join-Path $currentDirectory "profile.ps1"
$target = $PROFILE

# 检查目标文件是否存在
if (Test-Path -Path $target) {
    # 提示用户文件已经存在
    Write-Host "文件已存在：$target"
    Write-Host "请自行删除该文件。可以使用以下命令："
    
    # 打印出删除命令
    Write-Host "Remove-Item -Path `"$target`""
    return
}

# 创建符号链接
New-Item -ItemType SymbolicLink -Path $target -Target $source
