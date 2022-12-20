require 'ffi'

# see: http://msdn.microsoft.com/en-us/library/ms682653%28VS.85%29.aspx
#
HWND_BROADCAST = 0xffff
WM_SETTINGCHANGE = 0x001A
SMTO_BLOCK = 0x0001
SMTO_ABORTIFHUNG = 0x0002
SMTO_NOTIMEOUTIFNOTHUNG = 0x0008

flags = SMTO_BLOCK | SMTO_ABORTIFHUNG | SMTO_NOTIMEOUTIFNOTHUNG

def safe_attach_function(win32_func, *args)
  attach_function(win32_func.to_sym, *args)
rescue FFI::NotFoundError
  define_method(win32_func.to_sym) do |*margs|
    raise "not implemented"
  end
end
safe_attach_function :SendMessageTimeoutW, %i{HWND UINT WPARAM LPARAM UINT UINT PDWORD_PTR}, :LRESULT
safe_attach_function :SendMessageTimeoutA, %i{HWND UINT WPARAM LPARAM UINT UINT PDWORD_PTR}, :LRESULT


SendMessageTimeoutA(HWND_BROADCAST, WM_SETTINGCHANGE, 0, FFI::MemoryPointer.from_string("Environment").address, flags, 5000, nil)