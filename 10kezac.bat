@echo off
REM Komut penceresinin başlığını belirler
title YouTube Otomasyonu

REM Açılacak URL'yi tanımlar
set URL="https://www.youtube.com"

echo YouTube 10 kez açılıyor. Lutfen bekleyin...

REM 1'den 10'a kadar döngü başlatır
for /L %%i in (1,1,10) do (
    echo %%i. kez aciliyor...
    
    REM Tarayıcıda yeni bir pencerede URL'yi açar
    start %URL%
    
    REM Bilgisayarın yavaşlamaması için 0.5 saniye bekler (Ping gecikmesi)
    ping -n 1 -w 500 127.0.0.1 > nul
)

echo.
echo Islem tamamlandi.
pause