# ʹ��gbk���룬���԰��ļ��е��ļ���1-n���
$folderPath = "C:\Users\kasus\Nutstore\1\���Ա�ֽ"
$files = Get-ChildItem -Path $folderPath | Where-Object { $_.PSIsContainer -eq $false }

$counter = 1
foreach ($file in $files) {
    $extension = $file.Extension
    $newFileName = "$counter$extension"
    $newFilePath = Join-Path -Path $folderPath -ChildPath $newFileName
    Rename-Item -Path $file.FullName -NewName $newFilePath
    $counter++
}
