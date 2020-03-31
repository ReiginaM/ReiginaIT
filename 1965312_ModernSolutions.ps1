Function KillThatProcess([string] $name="notepad") 
{ 
	
    Get-Process $name
	$numProcesses = (Get-Process $name).count
	$input = Read-Host “There are $numProcesses processes with the name $name, proceed? Y/N”
	$input =$input.ToUpper()
	
    if($input -eq "Y") 
	{
		
		spps -processname $name
	}
	else
	{
		Write-Host -NoNewline -BackgroundColor Black -ForegroundColor Red "There are currently no processes running with that name"
	}
	
}

Function Bamboozle([string] $path="C:\It\")
{
	$message = "a goofy message.....pls laugh :))"
	$randomletter =(65..90) + (97..122) | Get-Random | % {[char]$_}
	Write-Host "$randomletter was chosen."
	Write-Host -NoNewline -BackgroundColor Red -ForegroundColor Green $randomletter":" $message	
	Remove-Item $path*$randomletter* -Force -WhatIf
	
}

