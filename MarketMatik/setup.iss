; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Marketmatik Revize V.1.2"
#define MyAppVersion "1.2"
#define MyAppPublisher "�2017 Choice Corp."
#define MyAppURL "http://www.seckinumur.com"
#define MyAppExeName "MarketMatik.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{BA0EACA3-B4E6-456C-AD64-69F3BF080B19}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\MarketMatik
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir=C:\Users\secki\Desktop
OutputBaseFilename=Marketmatik Revize V.1.2
SetupIconFile=D:\kurs\MarketMatik kaynak kodu\MarketMatik\MarketMatik\markettt.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\kurs\MarketMatik kaynak kodu\MarketMatik\MarketMatik\bin\Debug\MarketMatik.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\kurs\MarketMatik kaynak kodu\MarketMatik\MarketMatik\bin\Debug\*"; DestDir: "C:\MarketMatik"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\kurs\MarketMatik kaynak kodu\MarketMatik\MarketMatik\bin\Debug\veritabani\Veri.s3db"; DestDir: "C:\MarketMatik\Data"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

