@echo off
color 0a
title SISTEM ELE GECIRILDI

echo UYARI: Kritik sistem dosyalari siliniyor...
timeout /t 2 /nobreak > nul
echo.
echo C:\Windows\System32\kernel32.dll siliniyor...
timeout /t 1 /nobreak > nul
echo C:\Windows\System32\user32.dll siliniyor...
timeout /t 1 /nobreak > nul
echo C:\Windows\System32\gdi32.dll siliniyor...
timeout /t 2 /nobreak > nul
echo.
echo Islem basarili. Ag baglantisi kesiliyor...
timeout /t 1 /nobreak > nul
echo.
echo Kisisel veriler sunucuya kopyalaniyor...
echo [####################] 100%%
timeout /t 2 /nobreak > nul
echo.
echo Islem tamamlandi.
echo Gecmis olsun.
echo.
pause