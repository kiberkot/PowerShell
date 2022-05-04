$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$TabControl1 = $null
[System.Windows.Forms.TabPage]$TabPage1 = $null
[System.Windows.Forms.TextBox]$TextBox2 = $null
[System.Windows.Forms.CheckBox]$CheckBox1 = $null
[System.Windows.Forms.Button]$Button1 = $null
[System.Windows.Forms.TabPage]$TabPage2 = $null
[System.Windows.Forms.TextBox]$TextBox1 = $null
function InitializeComponent
{
$TabControl1 = (New-Object -TypeName System.Windows.Forms.TabControl)
$TabPage1 = (New-Object -TypeName System.Windows.Forms.TabPage)
$TabPage2 = (New-Object -TypeName System.Windows.Forms.TabPage)
$TextBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Button1 = (New-Object -TypeName System.Windows.Forms.Button)
$CheckBox1 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$TextBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$TabControl1.SuspendLayout()
$TabPage1.SuspendLayout()
$Form1.SuspendLayout()
#
#TabControl1
#
$TabControl1.Controls.Add($TabPage1)
$TabControl1.Controls.Add($TabPage2)
$TabControl1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$TabControl1.Name = [System.String]'TabControl1'
$TabControl1.SelectedIndex = [System.Int32]0
$TabControl1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]852,[System.Int32]139))
$TabControl1.TabIndex = [System.Int32]0
#
#TabPage1
#
$TabPage1.Controls.Add($TextBox2)
$TabPage1.Controls.Add($CheckBox1)
$TabPage1.Controls.Add($Button1)
$TabPage1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$TabPage1.Name = [System.String]'TabPage1'
$TabPage1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$TabPage1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]844,[System.Int32]113))
$TabPage1.TabIndex = [System.Int32]0
$TabPage1.Text = [System.String]'TabPage1'
$TabPage1.UseVisualStyleBackColor = $true
#
#TabPage2
#
$TabPage2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$TabPage2.Name = [System.String]'TabPage2'
$TabPage2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$TabPage2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]192,[System.Int32]74))
$TabPage2.TabIndex = [System.Int32]1
$TabPage2.Text = [System.String]'TabPage2'
$TabPage2.UseVisualStyleBackColor = $true
#
#TextBox1
#
$TextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]157))
$TextBox1.Multiline = $true
$TextBox1.Name = [System.String]'TextBox1'
$TextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]844,[System.Int32]178))
$TextBox1.TabIndex = [System.Int32]1
#
#Button1
#
$Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]43))
$Button1.Name = [System.String]'Button1'
$Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Button1.TabIndex = [System.Int32]0
$Button1.Text = [System.String]'Button1'
$Button1.UseVisualStyleBackColor = $true
#
#CheckBox1
#
$CheckBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]134,[System.Int32]43))
$CheckBox1.Name = [System.String]'CheckBox1'
$CheckBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox1.TabIndex = [System.Int32]1
$CheckBox1.Text = [System.String]'CheckBox1'
$CheckBox1.UseVisualStyleBackColor = $true
#
#TextBox2
#
$TextBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]6))
$TextBox2.Name = [System.String]'TextBox2'
$TextBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]232,[System.Int32]21))
$TextBox2.TabIndex = [System.Int32]2
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]876,[System.Int32]347))
$Form1.Controls.Add($TextBox1)
$Form1.Controls.Add($TabControl1)
$Form1.Text = [System.String]'Form1'
$TabControl1.ResumeLayout($false)
$TabPage1.ResumeLayout($false)
$TabPage1.PerformLayout()
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name TabControl1 -Value $TabControl1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TabPage1 -Value $TabPage1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox2 -Value $TextBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox1 -Value $CheckBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TabPage2 -Value $TabPage2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox1 -Value $TextBox1 -MemberType NoteProperty
}
. InitializeComponent
