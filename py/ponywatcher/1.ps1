# 使用gbk编码，可以把文件夹的文件从1-n编号
$folderPath = "C:\Users\kasus\Nutstore\1\电脑壁纸"
$files = Get-ChildItem -Path $folderPath | Where-Object { $_.PSIsContainer -eq $false }

$counter = 1
foreach ($file in $files) {
    $extension = $file.Extension
    $newFileName = "$counter$extension"
    $newFilePath = Join-Path -Path $folderPath -ChildPath $newFileName
    Rename-Item -Path $file.FullName -NewName $newFilePath
    $counter++
}
