########################################################################################################################### 
#                  Powershell GUI Tool for WinCollect Troubleshooting  ###############
# Created by John Hartman   Email=john.hartman@ibm.com
# Version:1
# 
#
#
# Instructions for use:
#	
#	
#
#  
#
#    Note: Please copy  "Lucida Sans Typewriter,9"  font in your server where
#    this tool is running in order to get the out put in clearly
#
#
#                              
########################################################################################################################### 
 
$QRadarIP = '<YourQRadarIP>'
$authtoken = '<YourAuthToken>'
$SECHeader = @(
"SEC: $authtoken"
)


# region Form 
 
Add-Type -AssemblyName System.Windows.Forms 
 
$Form = New-Object system.Windows.Forms.Form 
$Form.Text = "QRadar API GUI - Created by John Hartman" 
$Form.TopMost = $true 
$Form.Width = 575
$Form.Height = 700 
$Form.FormBorderStyle= "Sizable" 
$form.StartPosition ="centerScreen" 
$form.ShowInTaskbar = $true  
$form.BackColor = "#161919" 
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
$InputBox.BackColor = "#2A363B" 
$InputBox.Width = 280 
$InputBox.Height = 135 
$InputBox.ScrollBars ="Vertical" 
$InputBox.location = new-object system.drawing.point(250,30) 
$InputBox.Font = "Microsoft Sans Serif,10" 
$InputBox.ForeColor = "#FECEA8"
$Form.controls.Add($inputbox) 

 
$filterbox= New-Object system.windows.Forms.TextBox 
$filterbox.Multiline = $true 
$filterBox.BackColor = "#2A363B" 
$filterbox.Width = 280 
$filterbox.Height = 135
$filterbox.ScrollBars ="Vertical" 
$filterbox.location = new-object system.drawing.point(250,190) 
$filterbox.Font = "Microsoft Sans Serif,10" 
$filterbox.ForeColor = "#FECEA8"
$Form.controls.Add($filterbox) 

 
$outputBox= New-Object System.Windows.Forms.RichTextBox 
$outputBox.Multiline = $true 
$outputBox.BackColor = "#2A363B" 
$outputBox.Width = 500
$outputBox.Height = 265
$outputBox.ReadOnly =$true 
$outputBox.ScrollBars = "Both" 
$outputBox.WordWrap = $false 
$outputBox.location = new-object system.drawing.point(10,350) 
$outputBox.Font = "Lucida Sans Typewriter,9" 
$outputBox.ForeColor = "#FECEA8"
$Form.controls.Add($outputBox) 
 
  


# endregion


# region Labels

$Eserverslb = New-Object system.windows.Forms.Label 
$Eserverslb.Text = "Enter Servers" 
$Eserverslb.AutoSize = $true 
$Eserverslb.Width = 25 
$Eserverslb.Height = 10 
$Eserverslb.location = new-object system.drawing.point(250,10) 
$Eserverslb.Font = "Microsoft Sans Serif,10,style=Bold" 
$Eserverslb.ForeColor = "#C4DCDF"
$Form.controls.Add($Eserverslb) 
 
 
$Filterslb = New-Object system.windows.Forms.Label 
$Filterslb.Text = "Filters" 
$Filterslb.AutoSize = $true 
$Filterslb.Width = 25 
$Filterslb.Height = 10 
$Filterslb.location = new-object system.drawing.point(250,170) 
$Filterslb.Font = "Microsoft Sans Serif,10,style=Bold"
$Filterslb.ForeColor = "#C4DCDF"
$Form.controls.Add($Filterslb) 
 

$Outputlb = New-Object system.windows.Forms.Label 
$Outputlb.Text = "Output" 
$Outputlb.AutoSize = $true 
$Outputlb.Width = 25 
$Outputlb.Height = 10 
$Outputlb.location = new-object system.drawing.point(10,330) 
$Outputlb.Font = "Microsoft Sans Serif,10,style=Bold"
$Outputlb.ForeColor = "#C4DCDF"
$Form.controls.Add($Outputlb) 

$metricslb = New-Object system.windows.Forms.Label 
$metricslb.Text = "Metrics" 
$metricslb.AutoSize = $true 
$metricslb.Width = 25 
$metricslb.Height = 10 
$metricslb.location = new-object system.drawing.point(10,10) 
$metricslb.Font = "Microsoft Sans Serif,10,style=Bold" 
$metricslb.ForeColor = "#C4DCDF"
$Form.controls.Add($metricslb)


$auditinglb = New-Object system.windows.Forms.Label 
$auditinglb.Text = "Auditing" 
$auditinglb.AutoSize = $true 
$auditinglb.Width = 25 
$auditinglb.Height = 10 
$auditinglb.location = new-object system.drawing.point(130,10) 
$auditinglb.Font = "Microsoft Sans Serif,10,style=Bold"
$auditinglb.ForeColor = "#C4DCDF"
$Form.controls.Add($auditinglb)


# endregion


##########    Buttons    ##########

# region Left Column Buttons
  

$LogSourcebutton = New-Object system.windows.Forms.Button 
$LogSourcebutton.BackColor = "#2A363B"
$LogSourcebutton.ForeColor = "#C4DCDF"
$LogSourcebutton.Text = "Log Sources" 
$LogSourcebutton.Width = 100 
$LogSourcebutton.Height = 22
$LogSourcebutton.location = new-object system.drawing.point(10,30) 
$LogSourcebutton.Font = "Microsoft Sans Serif,8" 
$LogSourcebutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$LogSourcebutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$LogSourcebutton.Cursor = [System.Windows.Forms.Cursors]::Hand
$LogSourcebutton.Add_Click({Log-Sources}) 
$Form.controls.Add($LogSourcebutton) 


$RFSetsbutton = New-Object system.windows.Forms.Button 
$RFSetsbutton.BackColor = "#2A363B"
$RFSetsbutton.ForeColor = "#C4DCDF"
$RFSetsbutton.Text = "Ref Sets" 
$RFSetsbutton.Width = 100 
$RFSetsbutton.Height = 22
$RFSetsbutton.location = new-object system.drawing.point(10,50) 
$RFSetsbutton.Font = "Microsoft Sans Serif,8" 
$RFSetsbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$RFSetsbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$RFSetsbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
$RFSetsbutton.Add_Click({RFSets}) 
$Form.controls.Add($RFSetsbutton) 


$StopSerbutton = New-Object system.windows.Forms.Button 
$StopSerbutton.BackColor = "#2A363B" 
$StopSerbutton.ForeColor = "#C4DCDF"
$StopSerbutton.Text = "null" 
$StopSerbutton.Width = 100 
$StopSerbutton.Height = 22
$StopSerbutton.location = new-object system.drawing.point(10,70) 
$StopSerbutton.Font = "Microsoft Sans Serif,8" 
$StopSerbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$StopSerbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$StopSerbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$StopSerbutton.Add_Click({Stop-ser}) 
$Form.controls.Add($StopSerbutton) 
  
  
$1portbutton = New-Object system.windows.Forms.Button 
$1portbutton.BackColor = "#2A363B" 
$1portbutton.ForeColor = "#C4DCDF"
$1portbutton.Text = "null" 
$1portbutton.Width = 100
$1portbutton.Height = 22
$1portbutton.location = new-object system.drawing.point(10,90) 
$1portbutton.Font = "Microsoft Sans Serif,8" 
$1portbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$1portbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$1portbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$portbutton.Add_Click({Get-portstatus}) 
$Form.controls.Add($1portbutton) 
 
 
$2portbutton = New-Object system.windows.Forms.Button 
$2portbutton.BackColor = "#2A363B" 
$2portbutton.ForeColor = "#C4DCDF"
$2portbutton.Text = "null" 
$2portbutton.Width = 100
$2portbutton.Height = 22
$2portbutton.location = new-object system.drawing.point(10,110) 
$2portbutton.Font = "Microsoft Sans Serif,8" 
$2portbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$2portbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$2portbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$portbutton.Add_Click({Get-8413portstatus}) 
$Form.controls.Add($2portbutton) 

 
$3portbutton = New-Object system.windows.Forms.Button 
$3portbutton.BackColor = "#2A363B" 
$3portbutton.ForeColor = "#C4DCDF"
$3portbutton.Text = "null" 
$3portbutton.Width = 100
$3portbutton.Height = 22
$3portbutton.location = new-object system.drawing.point(10,130) 
$3portbutton.Font = "Microsoft Sans Serif,8" 
$3portbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$3portbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$3portbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$portbutton.Add_Click({Get-135portstatus}) 
$Form.controls.Add($3portbutton)


$4portbutton = New-Object system.windows.Forms.Button 
$4portbutton.BackColor = "#2A363B" 
$4portbutton.ForeColor = "#C4DCDF"
$4portbutton.Text = "null" 
$4portbutton.Width = 100
$4portbutton.Height = 22
$4portbutton.location = new-object system.drawing.point(10,150) 
$4portbutton.Font = "Microsoft Sans Serif,8" 
$4portbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$4portbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$4portbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$portbutton.Add_Click({Get-139portstatus}) 
$Form.controls.Add($4portbutton)


$445portbutton = New-Object system.windows.Forms.Button 
$445portbutton.BackColor = "#2A363B" 
$445portbutton.ForeColor = "#C4DCDF"
$445portbutton.Text = "null" 
$445portbutton.Width = 100
$445portbutton.Height = 22
$445portbutton.location = new-object system.drawing.point(10,170) 
$445portbutton.Font = "Microsoft Sans Serif,8" 
$445portbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$445portbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$445portbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$portbutton.Add_Click({Get-445portstatus}) 
$Form.controls.Add($445portbutton)
 
 
$Generatebutton = New-Object system.windows.Forms.Button 
$Generatebutton.BackColor = "#2A363B" 
$Generatebutton.ForeColor = "#C4DCDF"
$Generatebutton.Text = "null" 
$Generatebutton.Width = 100 
$Generatebutton.Height = 22 
$Generatebutton.location = new-object system.drawing.point(10,190) 
$Generatebutton.Font = "Microsoft Sans Serif,8" 
$Generatebutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$Generatebutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Generatebutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$Generatebutton.Add_Click({NEWPEM}) 
$Form.controls.Add($Generatebutton)


# endregion


# region Right Column log Buttons


$Adminusersbutton = New-Object system.windows.Forms.Button 
$Adminusersbutton.BackColor = "#2A363B" 
$Adminusersbutton.ForeColor = "#C4DCDF"
$Adminusersbutton.Text = "Admin Users" 
$Adminusersbutton.Width = 100 
$Adminusersbutton.Height = 22 
$Adminusersbutton.location = new-object system.drawing.point(130,30) 
$Adminusersbutton.Font = "Microsoft Sans Serif,8" 
$Adminusersbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$Adminusersbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Adminusersbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
$Adminusersbutton.Add_Click({Admin-users}) 
$Form.controls.Add($Adminusersbutton)

$Networkhierarchybutton = New-Object system.windows.Forms.Button 
$Networkhierarchybutton.BackColor = "#2A363B" 
$Networkhierarchybutton.ForeColor = "#C4DCDF"
$Networkhierarchybutton.Text = "Net Hierarchy" 
$Networkhierarchybutton.Width = 100 
$Networkhierarchybutton.Height = 22 
$Networkhierarchybutton.location = new-object system.drawing.point(130,50) 
$Networkhierarchybutton.Font = "Microsoft Sans Serif,8" 
$Networkhierarchybutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$Networkhierarchybutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Networkhierarchybutton.Cursor = [System.Windows.Forms.Cursors]::Hand
$Networkhierarchybutton.Add_Click({Network-Hierarchy}) 
$Form.controls.Add($Networkhierarchybutton)


$InstallOpenbutton = New-Object system.windows.Forms.Button 
$InstallOpenbutton.BackColor = "#2A363B" 
$InstallOpenbutton.ForeColor = "#C4DCDF"
$InstallOpenbutton.Text = "null" 
$InstallOpenbutton.Width = 100 
$InstallOpenbutton.Height = 22 
$InstallOpenbutton.location = new-object system.drawing.point(130,70) 
$InstallOpenbutton.Font = "Microsoft Sans Serif,8" 
$InstallOpenbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$InstallOpenbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$InstallOpenbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$InstallOpenbutton.Add_Click({InstallConfOpen}) 
$Form.controls.Add($InstallOpenbutton)


$CHKIDbutton = New-Object system.windows.Forms.Button 
$CHKIDbutton.BackColor = "#2A363B" 
$CHKIDbutton.ForeColor = "#C4DCDF"
$CHKIDbutton.Text = "null" 
$CHKIDbutton.Width = 100 
$CHKIDbutton.Height = 22 
$CHKIDbutton.location = new-object system.drawing.point(130,90) 
$CHKIDbutton.Font = "Microsoft Sans Serif,8" 
$CHKIDbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$CHKIDbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$CHKIDbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$CHKIDbutton.Add_Click({CHKID}) 
$Form.controls.Add($CHKIDbutton)


$CHGIDbutton = New-Object system.windows.Forms.Button 
$CHGIDbutton.BackColor = "#2A363B" 
$CHGIDbutton.ForeColor = "#C4DCDF"
$CHGIDbutton.Text = "null" 
$CHGIDbutton.Width = 100 
$CHGIDbutton.Height = 22 
$CHGIDbutton.location = new-object system.drawing.point(130,110) 
$CHGIDbutton.Font = "Microsoft Sans Serif,8" 
$CHGIDbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$CHGIDbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$CHGIDbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$CHGIDbutton.Add_Click({CHGID}) 
$Form.controls.Add($CHGIDbutton)


$CHKSERbutton = New-Object system.windows.Forms.Button 
$CHKSERbutton.BackColor = "#2A363B" 
$CHKSERbutton.ForeColor = "#C4DCDF"
$CHKSERbutton.Text = "null" 
$CHKSERbutton.Width = 100 
$CHKSERbutton.Height = 22 
$CHKSERbutton.location = new-object system.drawing.point(130,130) 
$CHKSERbutton.Font = "Microsoft Sans Serif,8" 
$CHKSERbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$CHKSERbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$CHKSERbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$CHKSERbutton.Add_Click({CHKSER}) 
$Form.controls.Add($CHKSERbutton)


$CHGSERbutton = New-Object system.windows.Forms.Button 
$CHGSERbutton.BackColor = "#2A363B" 
$CHGSERbutton.ForeColor = "#C4DCDF"
$CHGSERbutton.Text = "null" 
$CHGSERbutton.Width = 100 
$CHGSERbutton.Height = 22 
$CHGSERbutton.location = new-object system.drawing.point(130,150) 
$CHGSERbutton.Font = "Microsoft Sans Serif,8" 
$CHGSERbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
$CHGSERbutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$CHGSERbutton.Cursor = [System.Windows.Forms.Cursors]::Hand
#$CHGSERbutton.Add_Click({CHGSER}) 
$Form.controls.Add($CHGSERbutton)


# endregion


# region Documentation Button


$Documentationbutton = New-Object system.windows.Forms.Button 
$Documentationbutton.BackColor = "#2A363B"
$Documentationbutton.ForeColor = "#C4DCDF"
$Documentationbutton.Text = "Documentation" 
$Documentationbutton.Width = 100 
$Documentationbutton.Height = 22 
$Documentationbutton.location = new-object system.drawing.point(130,250) 
$Documentationbutton.Font = "Microsoft Sans Serif,8" 
$Documentationbutton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(81, 111, 111)
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


# region Log Sources Function
 
function Log-Sources { 

### URI links

$logsourceURI = @(
"https://$QRadarIP/api/config/event_sources/log_source_management/log_sources?fields=name%2Ctype_id%2Cgroup_ids%2Ctarget_event_collector_id%2Cstatus%20(status)%2Caverage_eps&filter=enabled%20%3D%20true"
)

$typeidURI = @(
"https://$QRadarIP/api/config/event_sources/log_source_management/log_source_types?fields=name%2Cid"
)

$groupidURI = @(
"https://$QRadarIP/api/config/event_sources/log_source_management/log_source_groups?fields=id%2Cname%2Cparent_id"
)

$ecidURI = @(
"https://$QRadarIP/api/config/event_sources/event_collectors?fields=id%2Cname"
)


### Each API Call and transform from JSON to CSV

curl.exe -S -X GET -k -H $SECHeader -H 'Range: items=0-5500' -H 'Version: 15.0' -H 'Accept: application/json' $logsourceURI | Out-file C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\logsource.json
((Get-Content -Path C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\logsource.json -Raw) |  ConvertFrom-Json) | Select-Object -Property @(
@{N="Log Source";E={$_.name}},
@{N="LS Type";E={$_.type_id}},
@{N="Group";E={$_.group_ids[0]}},
@{N="Event Collector";E={$_.target_event_collector_id}},
@{N="Status";E={$_.status.status}},
@{N="AVG EPS";E={$_.average_eps}}
) | Export-csv C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\logsource.csv -NoTypeInformation


curl.exe -S -X GET -k -H $SECHeader -H 'Range: items=0-5000' -H 'Version: 15.0' -H 'Accept: application/json' $typeidURI | Out-file C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\typeid.json
((Get-Content -Path C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\typeid.json -Raw) | ConvertFrom-Json) | Export-CSV C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\typeid.csv -NoTypeInformation


curl.exe -S -X GET -k -H $SECHeader -H 'Range: items=0-5000' -H 'Version: 15.0' -H 'Accept: application/json' $groupidURI | Out-file C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\groupid.json
((Get-Content -Path C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\groupid.json -Raw) | ConvertFrom-Json) | Export-CSV C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\groupid.csv -NoTypeInformation


curl.exe -S -X GET -k -H $SECHeader -H 'Range: items=0-49' -H 'Version: 15.0' -H 'Accept: application/json' $ecidURI  | Out-file C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\ecid.json
((Get-Content -Path C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\ecid.json -Raw) | ConvertFrom-Json) | Export-CSV C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\ecid.csv -NoTypeInformation

### Concat all CSV's to one Excel file

$sourceFolderPath = "C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources"
$OutputFilePath = "C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\Log-Sources.xlsx"
$XLfiles = Get-ChildItem $sourceFolderPath -Filter *.csv

foreach ($XLfile in $XLfiles) {

Import-Csv $XLfile.FullName | Export-Excel $OutputFilePath -WorksheetName $XLfile.BaseName    

}

$excel = New-Object -comobject Excel.Application
$wbPersonalXLSB = $excel.workbooks.open("C:\Users\<YourHomeDirectory>\AppData\Roaming\Microsoft\Excel\XLSTART\PERSONAL.XLSB")
$FilePath = "C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\Log-Sources.xlsx"
$workbook = $excel.Workbooks.Open($FilePath)
$excel.Visible = $false
$worksheet = $workbook.worksheets.item(1)
$excel.Run("PERSONAL.XLSB!QRadar_API_Metrics")
$wbPersonalXLSB.Close()
$workbook.save()
$workbook.close()
$excel.quit()



start  "C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\logsources\Log-Sources.xlsx"

 } 


# endregion


# region Admin Users Function

function Admin-users {

$adminusersURI = @(
"https://$QRadarIP/api/config/access/users?fields=username%2Cemail&filter=user_role_id%20%3D%202"
) 

$adminusersURI = 
curl.exe -S -X GET -k -H $SECHeader -H 'Range: items=0-49' -H 'Version: 15.0' -H 'Accept: application/json' $adminusersURI| Out-file C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\adminusers\users.json
((Get-Content -Path C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\adminusers\users.json -Raw) | ConvertFrom-Json) | Export-CSV C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\adminusers\users.csv -NoTypeInformation

} 

# endregion


# region Network Hierarchy

function Network-Hierarchy {

$networkhierarchyURI = @(
"https://$QRadarIP/api/config/network_hierarchy/networks"
) 

$adminusersURI = 
curl.exe -S -X GET -k -H $SECHeader -H 'Version: 15.0' -H 'Accept: application/json' $networkhierarchyURI| Out-file C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\nwhierarchy\network_hierarchy.json
((Get-Content -Path C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\nwhierarchy\network_hierarchy.json -Raw) | ConvertFrom-Json) | Export-CSV C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\nwhierarchy\network_hierarchy.csv -NoTypeInformation

}

#endregion


# region Reference Sets


function RFSets {

$rfsetsURI = @(
"https://$QRadarIP/api/reference_data/sets?fields=name%2Cnumber_of_elements"
)

curl.exe -S -X GET -k -H $SECHeader -H 'Range: items=0-5000' -H 'Version: 15.0' -H 'Accept: application/json' $rfsetsURI | Out-file C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\referencesets\rfsets.json
((Get-Content -Path C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\referencesets\rfsets.json -Raw) | ConvertFrom-Json) | Export-CSV C:\Users\<YourHomeDirectory>\Desktop\QRadar\API\referencesets\rfsets.csv -NoTypeInformation

}


# endregion


# region Documentation Function


function SHOWDOC {
	
	
	$documentation = 
	"
		Instructions for use:
	
Log Source Button
	
- Generate an excel document that displays the log source metrics for all enabled log sources broken out by customers
		
Admin Button
		
- Generates a spreadsheet of all Admin users for Qradar
		
	
	"
	[System.Windows.Forms.MessageBox]::Show($documentation,"Documentation",0)
 }

# endregion


[void]$Form.ShowDialog() 
$Form.Dispose()
