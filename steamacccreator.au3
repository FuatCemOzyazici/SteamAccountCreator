#include <ImageSearch.au3>
#include <FileConstants.au3>
#include <File.au3>

AutoItSetOption("SendKeyDownDelay",5)
AutoItSetOption("MouseClickDownDelay",100)
AutoItSetOption("WinTitleMatchMode", 2)

$word = InputBox("Steam Account Creator","Kullan�c� ad�n�z�n ve mailinizin ba��na gelecek olan kelimeyi giriniz. " & @crlf & "�rn: techfuat -> techfuat01,techfuat02 -> techfuat01@yandex.com,techfuat02@yandex.com")
$count = InputBox("Steam Account Creator","Ka� hesap a�s�n?")
Local $steamyolu = FileOpenDialog("Steam.exe yolunu se�in", "\", "Steam (Steam.exe)")
if $steamyolu = "" then Exit

for $i = 1 to int($count)
$accountname = $word & String($i)
$sifre = $word & "pw" & String($i) & String($i)

ShellExecute($steamyolu)
ProcessWait("Steam.exe")
Sleep(1000)
WinWait("Steam Giri�i")
Sleep(1000)
WinActivate("Steam Giri�i")
ConsoleWrite("basladi")
Sleep(1000)
Send("{TAB}")
Sleep(500)
Send("{TAB}")
Sleep(500)
Send("{TAB}")
Sleep(500)
Send("{TAB}")
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send($accountname)
Sleep(500)
Send("{TAB}")
Sleep(500)
Send($sifre)
Sleep(500)
Send("{TAB}")
Sleep(500)
Send($sifre)
Sleep(500)
Send("{ENTER}")
Sleep(2000)
Send($accountname & "@yandex.com")
Sleep(500)
Send("{TAB}")
Sleep(500)
Send($accountname & "@yandex.com")
Sleep(500)
Send("{ENTER}")
MouseMove(1,1,1)
$x1=0
$y1=0
$ara = _WaitForImageSearch(@ScriptDir & "\2.bmp",7,1,$x1,$y1,10)
Sleep(1000)
Send("{ENTER}")
Sleep(500)
Send("{ENTER}")
Sleep(1000)
WinActivate("Steam")
$x1=0
$y1=0
$ara = _WaitForImageSearch(@ScriptDir & "\1.bmp",7,1,$x1,$y1,10)
Sleep(500)
MouseMove($x1,$y1,5)
Sleep(500)
MouseClick("left")
Sleep(500)
Send("{DOWN}")
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("{ENTER}")
Sleep(3000)
WinWaitActive("Steam Giri�i")
ConsoleWrite("2")
Next






Exit