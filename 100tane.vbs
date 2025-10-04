' VBScript ile 100 kez hata mesaji gosteren zararsiz kod
' Bilgisayariniza zarar vermez.

Dim Message, Title, i

' Hata mesajinin icerigi (Tek tirnaklar cok onemli)
Message = "DirectX function ""m_renderer->createSwapChain({...})"" failed with DXGI_ERROR_DEVICE_REMOVED (""The video card has been physically removed from the system, or a driver upgrade for the video card has occurred.""). GPU: ""NVIDIA GeForce RTX 4060 Laptop GPU"". Driver: 56603. This error is usually caused by the graphics driver crashing; try installing the latest drivers.DeviceRemovedReason: S_OK (""No error occurred."")."
Title = "DirectX Error"

' 1'den 100'e kadar döngü başlatılır
For i = 1 to 100
    ' MsgBox komutu ile pop-up olusturulur. 16 = Kritik Hata Simgesi
    ' Bu kod, VBScript'te en hizli ve guvenilir pop-up olusturma yontemidir.
    MsgBox Message, 16, Title
Next

' Dongu bittikten sonra kullaniciya saka notu verir (Istege bagli)
MsgBox "100 adet sahte hata mesajı başarıyla tamamlandı. Rahatlayın, bu bir şakaydı!", 64, "Şaka Bitti"

' Bu satiri kaldirarak kullaniciya saka notu vermeyi engelleyebilirsiniz.
' MsgBox "Sistem imha islemi tamamlandi. Pencereyi kapatin.", 16, "Kritik!"