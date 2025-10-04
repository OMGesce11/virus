' VBScript ile ard arda iki mesaj gosteren zararsiz kod

Dim WshShell, Message1, Message2, Title1, Title2

' Birinci Mesaj Bilgileri
Message1 = "Hacklendin dostum >:)"
Title1 = "KRITIK SISTEM UYARISI"

' Ikinci Mesaj Bilgileri
Message2 = "Isın bıttı"
Title2 = "Sistem Kontrolü Alındı"

' **1. Adım: İlk Mesajı Göster**
' 16 = Kritik Hata Simgesi (Kırmızı X)
MsgBox Message1, 16, Title1

' **2. Adım: 2 Saniyelik Gecikme Yarat**
' WScript.Sleep fonksiyonu, kodu belirtilen milisaniye (ms) kadar duraklatir.
' 2000 ms = 2 saniye
Set WshShell = CreateObject("WScript.Shell")
WScript.Sleep 2000 

' **3. Adım: İkinci Mesajı Göster**
MsgBox Message2, 16, Title2