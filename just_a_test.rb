# see: http://msdn.microsoft.com/en-us/library/ms682653%28VS.85%29.aspx
HWND_BROADCAST = 0xffff
WM_SETTINGCHANGE = 0x001A
SMTO_BLOCK = 0x0001
SMTO_ABORTIFHUNG = 0x0002
SMTO_NOTIMEOUTIFNOTHUNG = 0x0008

flags = SMTO_BLOCK | SMTO_ABORTIFHUNG | SMTO_NOTIMEOUTIFNOTHUNG

SendMessageTimeoutA(HWND_BROADCAST, WM_SETTINGCHANGE, 0, FFI::MemoryPointer.from_string("Environment").address, flags, 5000, nil)