########################################################################################################################### 
#                  Powershell GUI Tool for Deep Security Troubleshooting  ###############
# Created by John Hartman   Email=john.hartman@ibm.com
# Version:1
# 
#
#
# Instructions for use:
#	
#
#	Port Check Buttons
#		
#		1) Enter the IP or a list of IPs on every new line for the endpoint servers you want to test
#
#		Port Check - with a destination server entered into the "Enter Servers" box you can type any port number into the "Filters" box and test the connectivity (only works for TCP)
#		4118 - With the IP of the endpoint server this will test the connectivity from the Deep Security manager to the endpoint systems over this port 4118
#
#
#    Note: Please copy  "Lucida Sans Typewriter,9"  font in your server where
#    this tool is running in order to get the out put in clearly
#
#
#                              
########################################################################################################################### 
 
 
# region Form 
 
Add-Type -AssemblyName System.Windows.Forms 
 
$Form = New-Object system.Windows.Forms.Form 
$Form.Text = "Deep Security Troubleshooting - Created by John Hartman" 
$Form.TopMost = $true 
$Form.Width = 765
$Form.Height = 580
$Form.FormBorderStyle= "Sizable" 
$form.StartPosition ="centerScreen" 
$form.ShowInTaskbar = $true 
$form.BackColor = "#151515" 
$form.HelpButton = $true

    
$StatusBar = New-Object System.Windows.Forms.StatusBar
$StatusBar.Text = "Ready"
$StatusBar.Height = 22
$StatusBar.Width = 200
$StatusBar.Location = New-Object System.Drawing.Point( 0, 250 )
$Form.Controls.Add($StatusBar)

 
# endregion

 
# region Text Boxes
 
$InputBox = New-Object system.windows.Forms.TextBox 
$InputBox.Multiline = $true 
$InputBox.BackColor = "#252525" 
$InputBox.Width = 220
$InputBox.Height = 452 
$InputBox.ScrollBars ="Vertical" 
$InputBox.location = new-object system.drawing.point(10,58) 
$InputBox.Font = "Microsoft Sans Serif,10,style=Bold" 
$InputBox.ForeColor = "#FFFFFF"
$Form.controls.Add($inputbox) 

 
$outputBox= New-Object System.Windows.Forms.RichTextBox 
$outputBox.Multiline = $true 
$outputBox.BackColor = "#252525" 
$outputBox.Width = 500
$outputBox.Height = 500
$outputBox.ReadOnly =$true 
$outputBox.ScrollBars = "Both" 
$outputBox.WordWrap = $false 
$outputBox.location = new-object system.drawing.point(240,10) 
$outputBox.Font = "Lucida Sans Typewriter,9" 
$outputBox.ForeColor = "#FFFFFF"
$Form.controls.Add($outputBox) 
 
  


# endregion


# region Labels

$label3 = New-Object system.windows.Forms.Label 
$label3.Text = "Enter Servers" 
$label3.AutoSize = $true 
$label3.Width = 25 
$label3.Height = 10 
$label3.location = new-object system.drawing.point(10,38) 
$label3.Font = "Microsoft Sans Serif,10,style=Bold" 
$label3.ForeColor = "#FFFFFF"
$Form.controls.Add($label3) 
 

# endregion


##########    Buttons    ##########


# region Port Check Buttons  
  
 
$portbutton = New-Object system.windows.Forms.Button 
$portbutton.BackColor = "#bb1b1b" 
$portbutton.Text = "Check Port 4118" 
$portbutton.Width = 100
$portbutton.Height = 22
$portbutton.location = new-object system.drawing.point(10,10) 
$portbutton.Font = "Microsoft Sans Serif,8" 
$portbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(223, 57, 57)
$portbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$portbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
$portbutton.Add_Click({Get-4118portstatus}) 
$Form.controls.Add($portbutton) 


# endregion
 

# region Documentation Button


$Documentationbutton = New-Object system.windows.Forms.Button 
$Documentationbutton.BackColor = "#bb1b1b" 
$Documentationbutton.Text = "Documentation" 
$Documentationbutton.Width = 100 
$Documentationbutton.Height = 22 
$Documentationbutton.location = new-object system.drawing.point(130,10) 
$Documentationbutton.Font = "Microsoft Sans Serif,8" 
$Documentationbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(223, 57, 57)
$Documentationbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Documentationbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
$Documentationbutton.Add_Click({SHOWDOC}) 
$Form.controls.Add($Documentationbutton)


# endregion

 
##########    Functions    ##########
 
# region Progress Display Function

Function Progressbar 
{ 
Add-Type -AssemblyName system.windows.forms 
$Script:formt = New-Object System.Windows.Forms.Form 
$Script:formt.Text = 'Please Wait' 
$Script:formt.TopMost = $true 
$Script:formt.StartPosition ="CenterScreen" 
$Script:formt.Width = 500 
$Script:formt.Height = 20 
$Script:formt.MaximizeBox = $false 
$Script:formt.MinimizeBox = $false 
$Script:formt.Visible = $false 
 
 
} 

# endregion
   

# region 4118 Port Check Function


function checkport4118 { 
 param( 
 $computername =$env:computername 
 ) 
  $sname =4118 
 $os = Test-NetConnection -ComputerName $computername -port $sname -ea silentlycontinue 
 if($os){ 
 
 $TcpTestSucceeded =$os.TcpTestSucceeded 
 
 $servername=$os.ComputerName 
  
 
  
 
 $results =new-object psobject 
 
 $results |Add-Member noteproperty TcpTestSucceeded  $TcpTestSucceeded 
 $results |Add-Member noteproperty ComputerName  $servername 
  
 
 
 #Display the results 
 
 $results | Select-Object computername,TcpTestSucceeded 
 
 } 
 
 
 else 
 
 { 
 
 $results =New-Object psobject 
 
 $results =new-object psobject 
 $results |Add-Member noteproperty TcpTestSucceeded "Na" 
 $results |Add-Member noteproperty ComputerName $servername 
 
 
  
 #display the results 
 
 $results | Select-Object computername,TcpTestSucceeded 
 
 
 
 
 } 
 
 
 
 } 
 
 $infoport =@() 
 
 
 foreach($allserver in $allservers){ 
 
$infoport += checkport $allserver  
 } 
 
 $infoport 
 
 
function Get-4118portstatus { 
progressbar 
 $outputBox.Clear() 
$statusBar.Text=("Processing the request")
 $computers=$InputBox.lines.Split("`n") 
 $date =Get-Date 
 $ct = "Task Completed @ " + $date 
 $Script:formt.Visible=$true 
  $infoport =@() 
 foreach ($computer in $computers) 
 { 
  $Script:formt.text="Working on $computer" 
 $infoport +=  checkport4118 $computer  
 $pres=  $infoport| ft -AutoSize  | Out-String 
  } 
 $outputBox.Appendtext("{0}`n" -f $pres +"`n $ct")  
 $statusBar.Text=("Ready")
 $Script:formt.close() 
 } 
 

# endregion



# region Documentation Function


function SHOWDOC {
	
	
	$documentation = 
	"
 Instructions for use:
	
		
	Port Check Buttons
		
		1) Enter the IP or a list of IPs on every new line for the endpoint servers you want to test

		Port Check - with a destination server entered into the 'Enter Servers' box you can type any port number into the 'Filters' box and test the connectivity (only works for TCP)
		4118 - With the IP of the endpoint server this will test the connectivity from the Deep Security manager to the endpoint systems over this port 4118

	"
	[System.Windows.Forms.MessageBox]::Show($documentation,"Documentation",0)
 }

# endregion


[void]$Form.ShowDialog() 
$Form.Dispose()