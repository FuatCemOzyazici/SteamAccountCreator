#include <ImageSearch.au3>
#include <FileConstants.au3>
#include <File.au3>

AutoItSetOption("SendKeyDownDelay",5)
AutoItSetOption("MouseClickDownDelay",100)
AutoItSetOption("WinTitleMatchMode", 2)

$word = InputBox("Steam Account Creator","Kullanýcý adýnýzýn ve mailinizin baþýna gelecek olan kelimeyi giriniz. " & @crlf & "Örn: techfuat -> techfuat01,techfuat02 -> techfuat01@yandex.com,techfuat02@yandex.com")
$count = InputBox("Steam Account Creator","Kaç hesap açsýn?")
Local $steamyolu = FileOpenDialog("Steam.exe yolunu seçin", "\", "Steam (Steam.exe)")
if $steamyolu = "" then Exit

for $i = 1 to int($count)
$accountname = $word & String($i)
$sifre = $word & "pw" & String($i) & String($i)

ShellExecute($steamyolu)
ProcessWait("Steam.exe")
Sleep(1000)
WinWait("Steam Giriþi")
Sleep(1000)
WinActivate("Steam Giriþi")
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
WinWaitActive("Steam Giriþi")
ConsoleWrite("2")
Next






Exit