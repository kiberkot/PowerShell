<# 
.NAME
    Получение информации о пользователе из Active Directory по почтовому адресу
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(1052,614)
$Form.text                       = "Информация о пользователях"
$Form.TopMost                    = $false

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 322
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(22,63)
$TextBox1.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Почта:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(24,39)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TextBox2                        = [System.Windows.Forms.TextBox]::new()
$TextBox2.multiline              = $true
$TextBox2.width                  = 1003
$TextBox2.height                 = 480
$TextBox2.location               = New-Object System.Drawing.Point(22,106)
$TextBox2.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$textBox2.ScrollBars             = [System.Windows.Forms.ScrollBars]::Vertical

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Загрузить данные"
$Button1.width                   = 265
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(362,53)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CheckBox1                       = New-Object system.Windows.Forms.CheckBox
$CheckBox1.text                  = "Рег.сеть"
$CheckBox1.AutoSize              = $false
$CheckBox1.width                 = 95
$CheckBox1.height                = 20
$CheckBox1.location              = New-Object System.Drawing.Point(300,32)
$CheckBox1.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "?"
$Button2.width                   = 30
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(1000,20)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)


$Form.controls.AddRange(@($TextBox1,$Label1,$TextBox2,$Button1,$CheckBox1,$Button2))


#region Logic 

#endregion


$Button1.Add_Click({ 

$TextBox2.Lines = ""

$u = $TextBox1.Text

try {

if ($CheckBox1.Checked) {	$s = [adsi]"LDAP://DC=branch,DC=PS,DC=LOCAL" }
else { $s = [adsi]"LDAP://DC=headoffice,DC=PS,DC=LOCAL" }


$ser = [adsisearcher]::new()
$ser.SearchRoot = $s
$ser.Filter = "(&(objectClass=user)(mail=$u))"
#$ser.FindOne().Properties.title

$a1 = $ser.FindOne().Properties.samaccountname
$a2 = $ser.FindOne().Properties.description
$a3 = $ser.FindOne().Properties.title
$a4 = $ser.FindOne().Properties.useraccountcontrol

$TextBox2.Lines = $TextBox2.Lines + $a1
$TextBox2.Lines = $TextBox2.Lines + $a2
$TextBox2.Lines = $TextBox2.Lines + $a3

switch ($a4){
'512' {$a5 = "Учётная запись активна"}
'16' {$a5 = "Учётная запись заблокирована"}
'2' {$a5 = "Учётная запись отключена"}
default {$a5 = "Код статуса учётной записи: $a4"}
}


$TextBox2.Lines = $TextBox2.Lines + $a5

$dat_pas = [datetime]::FromFileTime($ser.FindOne().Properties.pwdlastset[0])
$TextBox2.Lines = $TextBox2.Lines + "Пароль истекает:" + $dat_pas.AddDays('42')

$TextBox2.Lines = $TextBox2.Lines +  ''
$TextBox2.Lines = $TextBox2.Lines +  'Группы:'
$o = $ser.FindOne().Properties.memberof | Sort-Object
foreach ($i in $o){
$gr = $i.split('=')[1]
$gr = $gr.split(',')[0]
$inf = ([adsisearcher]"(&(objectClass=group)(samaccountname=$gr))").FindOne().Properties.info

$sum = $gr + " Описание:"+ $inf + "`n"

$TextBox2.Lines = $TextBox2.Lines + $sum
}



}
catch {
$TextBox2.Lines = "Во время обработки запроса произошла ошибка. Проверьте правильность почтового адреса. Возмжоно пользователь из региональной сети."
}

}
)

$Button2.Add_Click({

$wshell = New-Object -ComObject Wscript.Shell
$Output = $wshell.Popup("Скрипт выводит информацию о пользователе и список групп AD в алфавитном порядке с описанием.",0,"Инфо",0)

})


[void]$Form.ShowDialog()


