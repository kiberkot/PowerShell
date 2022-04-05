<# 
    Принимает на вход список компьютеров и выдаёт текущего залогиненого пользователя для каждого. Графическая форма
#>

Add-Type -assembly System.Windows.Forms
 
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='User Name'
$main_form.Width = 100
$main_form.Height = 100
$main_form.AutoSize = $true

$objTextBox1 = New-Object System.Windows.Forms.TextBox 
$objTextBox1.Multiline = $True;
$objTextBox1.Location = New-Object System.Drawing.Size(10,10) 
$objTextBox1.Size = New-Object System.Drawing.Size(300,200)
$objTextBox1.Scrollbars = 3#Scrollbars.Vertical
$main_form.Controls.Add($objTextBox1) 

$button = New-Object System.Windows.Forms.Button
$button.Text = 'Go'
$button.Location = New-Object System.Drawing.Point(160,230)
$main_form.Controls.Add($button)

#Add Button event 
    $Button.Add_Click(
        {    

        $comp = $objTextBox1.Lines
		$objTextBox1.Lines = ''
        $comp | foreach {
        $UserName1 = Get-WMIObject -class Win32_ComputerSystem -ComputerName $_ -ErrorAction SilentlyContinue
		if ($UserName1) { $UserNameName = $UserName1.username } else { $UserNameName = "Нет данных" }
        
        $ee =  "$_ $UserNameName"
		$objTextBox1.Lines = $objTextBox1.Lines + $ee
        }
        }
    )     

$main_form.ShowDialog()
