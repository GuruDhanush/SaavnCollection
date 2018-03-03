$Path = "C:\Users\Guru\AppData\Local\Packages\Saavn.SaavnMusicRadio_ax02tpqam95xr\LocalState\mediaCache"

$File = Get-Item -Path $Path\np
#Remove-Variable -Name FileSize
$count = Get-Random -Minimum 10 -Maximum 100000
New-Variable -Name FileSize -Value 1000

while ($true)
{
    if($FileSize -ne $File.Length)
    {
        $fileName = "song" + $count + ".mp3"
        $count++;
        $FileSize = $File.Length
        Copy-Item -Path $Path\np -Destination C:\temp\$fileName
        Write-Host "Copied an song"
        
    }
    #Write-Host "Sleeping for 10 Seconds"
    sleep(60)
    $File = Get-Item -Path $Path\np
}
