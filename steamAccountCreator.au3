#include <FileConstants.au3>
#include <File.au3>

AutoItSetOption("SendKeyDownDelay",20)
AutoItSetOption("MouseClickDownDelay",100)
Func _ProgramFilesDir()
    Local $ProgramFileDir
    Switch @OSArch
        Case "X32"
            $ProgramFileDir = "Program Files"
        Case "X64"
            $ProgramFileDir = "Program Files (x86)"
    EndSwitch
    Return @HomeDrive & "\" & $ProgramFileDir
EndFunc   ;==>_ProgramFilesDirh
$word = InputBox("Steam Account Creator","Kullan�c� ad�n�z�n ve mailinizin ba��na gelecek olan kelimeyi giriniz. " & @crlf & "�rn: techfuat -> techfuat01,techfuat02 -> techfuat01@yandex.com,techfuat02@yandex.com")
$count = InputBox("Steam Account Creator","Ka� hesap a�s�n?")
$sleeptime = Int(InputBox("Steam Account Creator","Sleep s�resi:","500"))
Local $steamyolu = FileOpenDialog("Steam.exe yolunu se�in", _ProgramFilesDir & "\Steam\Steam.exe", "Steam (Steam.exe)")
if $steamyolu = "" then Exit
ProcessClose("Steam.exe")
ProcessWaitClose("Steam.exe",5)
ShellExecute($steamyolu)
ProcessWait("Steam.exe")

for $i = 1 to int($count)
$accountname = $word & String($i)
$sifre = $word & "pw" & String($i) & String($i)

ConsoleWrite("basladi=" & $i & @crlf)

WinWait("Steam Giri�i")
Sleep($sleeptime)
$winpos = WinGetPos("Steam Giri�i")
MouseMove($winpos[0]+$winpos[2] - 100,$winpos[1]+$winpos[3] - 30)
MouseClick("left")
Sleep($sleeptime)
Send("{ENTER}")
Sleep($sleeptime)
Send("{ENTER}")
Sleep($sleeptime)
Send("{ENTER}")
Sleep($sleeptime)
Send("{ENTER}")
Sleep($sleeptime)
Send($accountname)
Sleep($sleeptime)
Send("{TAB}")
Sleep($sleeptime)
Send($sifre)
Sleep($sleeptime)
Send("{TAB}")
Sleep($sleeptime)
Send($sifre)
While PixelSearch(0,0,1000,1000,1983078,1) = 0
   Sleep(10)
WEnd
Sleep($sleeptime)
$winpos = WinGetPos("Steam Hesab� Olu�tur")
MouseMove($winpos[0]+$winpos[2] - 180,$winpos[1]+$winpos[3] - 30)
MouseClick("left")
Sleep($sleeptime)
Sleep($sleeptime)
Send($accountname & "@yandex.com")
Sleep($sleeptime)
Send("{TAB}")
Sleep($sleeptime)
Send($accountname & "@yandex.com")
$winpos = WinGetPos("Steam Hesab� Olu�tur")
MouseMove($winpos[0]+$winpos[2] - 180,$winpos[1]+$winpos[3] - 30)
MouseClick("left")
Sleep($sleeptime)
WinWait("Steam - Hesap Olu�tur")
Sleep($sleeptime)
$winpos = WinGetPos("Steam - Hesap Olu�tur")
While PixelGetColor($winpos[0]+$winpos[2] - 150,$winpos[1]+$winpos[3] - 30) <> 6118749
 sleep(10)
WEnd
Sleep($sleeptime)
Sleep($sleeptime)
Sleep($sleeptime)
MouseClick("left")
Sleep($sleeptime)
Sleep($sleeptime)
WinWait("Steam - Hesap Olu�tur")
$winpos = WinGetPos("Steam - Hesap Olu�tur")
while PixelGetColor($winpos[0]+$winpos[2] - 180,$winpos[1]+$winpos[3] - 173) <> 132877
Sleep(10)
WEnd
MouseMove($winpos[0]+$winpos[2] - 80,$winpos[1]+$winpos[3] - 30)
MouseClick("left")
Sleep($sleeptime)
Sleep($sleeptime)
Sleep($sleeptime)
WinWait("Steam")
Sleep($sleeptime)
$b = PixelSearch(0,0,1000,1000,0x4897B5,4)
MouseMove($b[0]+20,$b[1])
MouseClick("left")
WinWait("Knight Online")
Sleep($sleeptime)
$winpos = WinGetPos("Knight Online")
MouseMove($winpos[0]+$winpos[2] - 200,$winpos[1]+$winpos[3] - 40)
MouseClick("left")
ProcessWait("Launcher.exe")
Sleep($sleeptime)
Sleep($sleeptime)
ProcessClose("Launcher.exe")
Sleep($sleeptime)
Sleep($sleeptime)
Sleep($sleeptime)
 ;ctrl

$winpos = WinGetPos("Steam")
MouseMove($winpos[0]+20 ,$winpos[1]+ 12)
MouseClick("left")
Send("{DOWN}")
Sleep($sleeptime)
Send("{ENTER}")
Sleep($sleeptime)
Send("{ENTER}")
Sleep(1000)
Next

Exit