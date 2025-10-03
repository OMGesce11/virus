# Gerekli Windows Formları kütüphanelerini yükle
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Form (pencere) oluştur
$form = New-Object System.Windows.Forms.Form
$form.Text = "Windows"
$form.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#0078d7") # Klasik mavi ekran rengi
$form.FormBorderStyle = "None" # Kenarlıkları ve başlık çubuğunu gizle
$form.WindowState = "Maximized" # Tam ekran yap
$form.TopMost = $true # Her zaman en üstte göster

# Üzgün surat :(
$label_sadface = New-Object System.Windows.Forms.Label
$label_sadface.Text = ":("
$label_sadface.Font = New-Object System.Drawing.Font("Segoe UI", 120)
$label_sadface.ForeColor = "White"
$label_sadface.AutoSize = $true
$label_sadface.Location = New-Object System.Drawing.Point(150, 150)

# Ana hata mesajı
$label_message = New-Object System.Windows.Forms.Label
$label_message.Text = "Bilgisayarınız bir sorunla karşılaştı ve yeniden başlatılması gerekiyor.`nSadece bazı hata bilgileri toplanıyor ve ardından yeniden başlatılacak.`n`nBu sorunu ve olası düzeltmeleri araştırmak için şu hata kodunu kullanabilirsiniz: `nKERNEL_DATA_INPAGE_ERROR"
$label_message.Font = New-Object System.Drawing.Font("Segoe UI", 20)
$label_message.ForeColor = "White"
$label_message.AutoSize = $true
$label_message.Location = New-Object System.Drawing.Point(150, 450)

# Çıkış bilgisi
$label_exit = New-Object System.Windows.Forms.Label
$label_exit.Text = "(Kapatmak için ESC tuşuna basın veya fareye tıklayın)"
$label_exit.Font = New-Object System.Drawing.Font("Segoe UI", 12)
$label_exit.ForeColor = "White"
$label_exit.AutoSize = $true
$label_exit.Location = New-Object System.Drawing.Point(150, 800)


# Yazıları forma ekle
$form.Controls.Add($label_sadface)
$form.Controls.Add($label_message)
$form.Controls.Add($label_exit)


# Fareye tıklayınca veya bir tuşa basınca formu kapat
$form.MouseClick.Add({ $form.Close() })
$form.Keydown.Add({if ($_.KeyCode -eq "Escape") { $form.Close() }})


# Formu göster
$form.ShowDialog()