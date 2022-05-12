$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$Button1 = $null
function InitializeComponent
{
$Button1 = (New-Object -TypeName System.Windows.Forms.Button)
$Form1.SuspendLayout()
#
#Button1
#
$Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]103,[System.Int32]118))
$Button1.Name = [System.String]'Button1'
$Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Button1.TabIndex = [System.Int32]0
$Button1.Text = [System.String]'Button1'
$Button1.UseVisualStyleBackColor = $true
$Button1.add_KeyDown($Button1_KeyDown)
$Button1.add_KeyPress($Button1_KeyPress)
$Button1.add_KeyUp($Button1_KeyUp)
$Button1.add_MouseClick($Button1_MouseClick)
$Button1.add_PreviewKeyDown($Button1_PreviewKeyDown)
#
#Form1
#
$Form1.Controls.Add($Button1)
$Form1.Text = [System.String]'Form1'
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
}
. InitializeComponent
