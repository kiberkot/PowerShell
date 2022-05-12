$Button1_PreviewKeyDown = {
}
$Button1_MouseClick = {
}
$Button1_KeyUp = {
}
$Button1_KeyPress = {
}
$Button1_KeyDown = {
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'form_.designer.ps1')
$Form1.ShowDialog()