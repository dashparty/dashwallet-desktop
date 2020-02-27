; DashWallet.iss
;
; Config file for creating a windows installer file for tbe
;


[Setup]
AppName=DashWallet
AppVersion=1.0.0
DefaultDirName={pf}\DashWallet
DefaultGroupName=DashWallet
UninstallDisplayIcon={app}\DashWallet.exe
Compression=lzma2
SolidCompression=yes
OutputDir=C:\Users\J-Dog\Desktop\
OutputBaseFilename=DashWallet

; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
; On all other architectures it will install in "32-bit mode".
ArchitecturesInstallIn64BitMode=x64

[Registry]
; Add support for dash: urls
Root: HKCR; Subkey: "dash"; ValueType: "string"; ValueData: "URL:Dash Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "dash"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "dash\DefaultIcon"; ValueType: "string"; ValueData: "{app}\DashWallet.exe,0"
Root: HKCR; Subkey: "dash\shell\open\command"; ValueType: "string"; ValueData: """{app}\DashWallet.exe"" ""%1"""
; Add support for dashparty: urls
Root: HKCR; Subkey: "dashparty"; ValueType: "string"; ValueData: "URL:dashparty Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "dashparty"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "dashparty\DefaultIcon"; ValueType: "string"; ValueData: "{app}\DashWallet.exe,0"
Root: HKCR; Subkey: "dashparty\shell\open\command"; ValueType: "string"; ValueData: """{app}\DashWallet.exe"" ""%1"""
; Add support for freewallet: urls
Root: HKCR; Subkey: "dashwallet"; ValueType: "string"; ValueData: "URL:dashwallet Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "dashwallet"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "dashwallet\DefaultIcon"; ValueType: "string"; ValueData: "{app}\DashWallet.exe,0"
Root: HKCR; Subkey: "dashwallet\shell\open\command"; ValueType: "string"; ValueData: """{app}\DashWallet.exe"" ""%1"""

; Override some default messages
[Messages]
WelcomeLabel1=Welcome to [name] Setup Wizard
WelcomeLabel2=This will install [name] on your computer.%n%nIt is recommended that you close all other applications before continuing.

; Include all the files necessary for the tbe build
[Files]
Source: "C:\Users\J-Dog\Desktop\DashWallet\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

; Setup icon group and icon on desktop
[Icons]
Name: "{group}\DashWallet";          Filename: "{app}\DashWallet.exe"
Name: "{commondesktop}\DashWallet";  Filename: "{app}\DashWallet.exe"