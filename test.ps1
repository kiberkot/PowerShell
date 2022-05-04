Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'test.designer.ps1')
$Form1.ShowDialog()