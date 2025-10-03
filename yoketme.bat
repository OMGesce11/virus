@echo off
REM VBScript kodunu gecici bir dosyaya yaz
echo X=MsgBox("DirectX function ""m_renderer->createSwapChain({...})"" failed with DXGI_ERROR_DEVICE_REMOVED (""The video card has been physically removed from the system, or a driver upgrade for the video card has occurred.""). GPU: ""NVIDIA GeForce RTX 4060 Laptop GPU"". Driver: 56603. This error is usually caused by the graphics driver crashing; try installing the latest drivers.DeviceRemovedReason: S_OK (""No error occurred."").", 16+0, "DirectX Error") > temp_error.vbs

REM VBScript dosyasini calistir (Hata mesajini gosterir)
cscript //nologo temp_error.vbs

REM Gecici dosyayi sil
del temp_error.vbs

REM Sahte Tehdit Mesajı (Şaka notu olmadan)
cls
color 0c
echo.
echo ===========================================
echo   !! SISTEM KONTROL ALTINDA !!
echo ===========================================
echo.
echo  [TAMAM] tusuna basarak islemi onayladiniz.
echo  Sisteminizdeki tum veriler su anda saniyeler icinde
echo  kalici olarak devre disi birakilmak uzere isleniyor.
echo.
echo  Bu pencereyi kapattiginizda, degisiklikler aktif olacak.
echo.

pause
exit