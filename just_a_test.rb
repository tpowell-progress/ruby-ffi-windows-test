require 'ffi'
require 'ffi/types'

=begin
TypeDefs.merge!({
                  :HANDLE => Type::ULONG,
                  :HDC => Type::ULONG,
                  :HINSTANCE => Type::ULONG,
                  :HWND => Type::ULONG,

                  :ATOM => Type::USHORT,
                  :BOOL => Type::INT,
                  :BYTE => Type::UCHAR,
                  :DWORD => Type::UINT,

                  :LPCSTR => Type::STRING,
                  :LPSTR => Type::STRING,
                  :LPVOID => Type::POINTER,

                  :WPARAM => Type::UINT,
                  :LPARAM => Type::UINT,

                  # :LPWSTR =>,
                  # :LPCWSTR =>,
                  # :WINBOOL =>,
                  # :WCHAR => Type::STRING,
                  # ... more
                }) if RUBY_PLATFORM =~ /win/i || RUBY_PLATFORM =~ /ming/i
=end
FFI.typedef :void, :VOID
FFI.typedef :int, :BOOL
FFI.typedef :char, :CHAR
FFI.typedef :short, :SHORT
FFI.typedef :int, :INT
FFI.typedef :uint, :UINT
FFI.typedef :long, :LONG
FFI.typedef :ulong, :ULONG
FFI.typedef :pointer, :PULONG
FFI.typedef :ushort, :USHORT
FFI.typedef :pointer, :PUSHORT
FFI.typedef :uchar, :UCHAR
FFI.typedef :pointer, :PUCHAR
FFI.typedef :pointer, :PSZ
FFI.typedef :pointer, :CALLBACK
FFI.typedef :uchar, :BYTE
FFI.typedef :ushort, :WORD
FFI.typedef :ulong, :DWORD
FFI.typedef :float, :FLOAT
FFI.typedef :pointer, :PFLOAT
FFI.typedef :pointer, :PBOOL
FFI.typedef :pointer, :LPBOOL
FFI.typedef :pointer, :PBYTE
FFI.typedef :pointer, :LPBYTE
FFI.typedef :pointer, :PPBYTE
FFI.typedef :pointer, :PINT
FFI.typedef :pointer, :PUINT
FFI.typedef :pointer, :LPINT
FFI.typedef :pointer, :PWORD
FFI.typedef :pointer, :LPWORD
FFI.typedef :pointer, :LPLONG
FFI.typedef :pointer, :PDWORD
FFI.typedef :pointer, :LPDWORD
FFI.typedef :pointer, :LPVOID
FFI.typedef :pointer, :LPCVOID
FFI.typedef :pointer, :PSHORT
FFI.typedef :pointer, :PLONG
FFI.typedef :size_t, :HANDLE
FFI.typedef :pointer, :PHANDLE
FFI.typedef :pointer, :LPHANDLE
FFI.typedef :BYTE, :FCHAR
FFI.typedef :WORD, :FSHORT
FFI.typedef :DWORD, :FLONG
FFI.typedef :LONG, :HRESULT
FFI.typedef :pointer, :PHRESULT
FFI.typedef :char, :CCHAR
FFI.typedef :DWORD, :LCID
FFI.typedef :PDWORD, :PLCID
FFI.typedef :WORD, :LANGID
FFI.typedef :long_long, :LONGLONG
FFI.typedef :pointer, :PLONGLONG
FFI.typedef :ulong_long, :ULONGLONG
FFI.typedef :pointer, :PULONGLONG
FFI.typedef :LONGLONG, :USN
FFI.typedef :ULONGLONG, :DWORDLONG
FFI.typedef :pointer, :PDWORDLONG
FFI.typedef :BYTE, :BOOLEAN
FFI.typedef :pointer, :PBOOLEAN
FFI.typedef :int8, :INT8
FFI.typedef :pointer, :PINT8
FFI.typedef :int16, :INT16
FFI.typedef :pointer, :PINT16
FFI.typedef :int32, :INT32
FFI.typedef :pointer, :PINT32
FFI.typedef :int64, :INT64
FFI.typedef :pointer, :PINT64
FFI.typedef :uint8, :UINT8
FFI.typedef :pointer, :PUINT8
FFI.typedef :uint16, :UINT16
FFI.typedef :pointer, :PUINT16
FFI.typedef :uint32, :UINT32
FFI.typedef :pointer, :PUINT32
FFI.typedef :uint64, :UINT64
FFI.typedef :pointer, :PUINT64
FFI.typedef :int32, :LONG32
FFI.typedef :pointer, :PLONG32
FFI.typedef :int32, :ULONG32
FFI.typedef :pointer, :PULONG32
FFI.typedef :int32, :DWORD32
FFI.typedef :pointer, :PDWORD32
FFI.typedef :long, :INT_PTR
FFI.typedef :pointer, :PINT_PTR
FFI.typedef :size_t, :UINT_PTR
FFI.typedef :long, :LONG_PTR
FFI.typedef :pointer, :PLONG_PTR
FFI.typedef :size_t, :ULONG_PTR
FFI.typedef :pointer, :PULONG_PTR
FFI.typedef :ULONG_PTR, :SIZE_T
FFI.typedef :pointer, :PSIZE_T
FFI.typedef :LONG_PTR, :SSIZE_T
FFI.typedef :pointer, :PSSIZE_T
FFI.typedef :ULONG_PTR, :DWORD_PTR
FFI.typedef :pointer, :PDWORD_PTR
FFI.typedef :int64, :LONG64
FFI.typedef :pointer, :PLONG64
FFI.typedef :uint64, :ULONG64
FFI.typedef :pointer, :PULONG64
FFI.typedef :uint64, :DWORD64
FFI.typedef :pointer, :PDWORD64
FFI.typedef :UINT_PTR, :WPARAM
FFI.typedef :LONG_PTR, :LPARAM
FFI.typedef :LONG_PTR, :LRESULT
FFI.typedef :HANDLE, :HGLOBAL
FFI.typedef :HANDLE, :HLOCAL
FFI.typedef :ulong_long, :HANDLE_PTR
FFI.typedef :WORD, :ATOM
FFI.typedef :HANDLE, :HKEY
FFI.typedef :pointer, :PHKEY
FFI.typedef :HANDLE, :HINSTANCE
FFI.typedef :HINSTANCE, :HMODULE
FFI.typedef :HANDLE, :HWND
FFI.typedef :HANDLE, :HHOOK
FFI.typedef :HANDLE, :HICON
FFI.typedef :HANDLE, :HMENU
FFI.typedef :HICON, :HCURSOR
FFI.typedef :HANDLE, :HCERTSTORE
FFI.typedef :short, :WCHAR
FFI.typedef :pointer, :PWCHAR
FFI.typedef :pointer, :LPWCH
FFI.typedef :pointer, :PWCH
FFI.typedef :pointer, :LPCWCH
FFI.typedef :pointer, :PCWCH
FFI.typedef :pointer, :NWPSTR
FFI.typedef :pointer, :LPWSTR
FFI.typedef :pointer, :PLPWSTR
FFI.typedef :pointer, :PWSTR
FFI.typedef :pointer, :PZPWSTR
FFI.typedef :pointer, :PCZPWSTR
FFI.typedef :pointer, :LPUWSTR
FFI.typedef :pointer, :PUWSTR
FFI.typedef :pointer, :PZPCWSTR
FFI.typedef :pointer, :LPCWSTR
FFI.typedef :pointer, :PCWSTR
FFI.typedef :pointer, :PCZPCWSTR
FFI.typedef :pointer, :LPCUWSTR
FFI.typedef :pointer, :PCUWSTR
FFI.typedef :pointer, :PZZWSTR
FFI.typedef :pointer, :PCZZWSTR
FFI.typedef :pointer, :PUZZWSTR
FFI.typedef :pointer, :PCUZZWSTR
FFI.typedef :pointer, :PNZWCH
FFI.typedef :pointer, :PCNZWCH
FFI.typedef :pointer, :PUNZWCH
FFI.typedef :pointer, :PCUNZWCH
FFI.typedef :pointer, :LPCWCHAR
FFI.typedef :pointer, :PCWCHAR
FFI.typedef :pointer, :LPCUWCHAR
FFI.typedef :pointer, :PCUWCHAR
FFI.typedef :ulong, :UCSCHAR
FFI.typedef :pointer, :PCHAR
FFI.typedef :pointer, :LPCH
FFI.typedef :pointer, :PCH
FFI.typedef :pointer, :LPCCH
FFI.typedef :pointer, :PCCH
FFI.typedef :pointer, :NPSTR
FFI.typedef :pointer, :LPSTR
FFI.typedef :pointer, :PSTR
FFI.typedef :pointer, :PZPSTR
FFI.typedef :pointer, :PCZPSTR
FFI.typedef :pointer, :LPCSTR
FFI.typedef :pointer, :PCSTR
FFI.typedef :pointer, :PZPCSTR
FFI.typedef :pointer, :PCZPCSTR
FFI.typedef :pointer, :PZZSTR
FFI.typedef :pointer, :PCZZSTR
FFI.typedef :pointer, :PNZCH
FFI.typedef :pointer, :PCNZCH
FFI.typedef :WCHAR, :TCHAR
FFI.typedef :pointer, :PTCHAR
FFI.typedef :WCHAR, :TBYTE
FFI.typedef :pointer, :PTBYTE
FFI.typedef :LPWCH, :LPTCH
FFI.typedef :LPWCH, :PTCH
FFI.typedef :LPCWCH, :LPCTCH
FFI.typedef :LPCWCH, :PCTCH
FFI.typedef :LPWSTR, :PTSTR
FFI.typedef :LPWSTR, :LPTSTR
FFI.typedef :LPCWSTR, :PCTSTR
FFI.typedef :LPCWSTR, :LPCTSTR
FFI.typedef :LPUWSTR, :PUTSTR
FFI.typedef :LPUWSTR, :LPUTSTR
FFI.typedef :LPCUWSTR, :PCUTSTR
FFI.typedef :LPCUWSTR, :LPCUTSTR
FFI.typedef :LPWSTR, :LP
FFI.typedef :PZZWSTR, :PZZTSTR
FFI.typedef :PCZZWSTR, :PCZZTSTR
FFI.typedef :PUZZWSTR, :PUZZTSTR
FFI.typedef :PCUZZWSTR, :PCUZZTSTR
FFI.typedef :PZPWSTR, :PZPTSTR
FFI.typedef :PNZWCH, :PNZTCH
FFI.typedef :PCNZWCH, :PCNZTCH
FFI.typedef :PUNZWCH, :PUNZTCH
FFI.typedef :PCUNZWCH, :PCUNZTCH

# see: http://msdn.microsoft.com/en-us/library/ms682653%28VS.85%29.aspx
#
HWND_BROADCAST = 0xffff
WM_SETTINGCHANGE = 0x001A
SMTO_BLOCK = 0x0001
SMTO_ABORTIFHUNG = 0x0002
SMTO_NOTIMEOUTIFNOTHUNG = 0x0008
flags = SMTO_BLOCK | SMTO_ABORTIFHUNG | SMTO_NOTIMEOUTIFNOTHUNG

module MyFFI

  extend FFI::Library

  ffi_lib "kernel32", "user32"

  def self.safe_attach_function(win32_func, *args)
    attach_function(win32_func.to_sym, *args)
  rescue FFI::NotFoundError
    define_method(win32_func.to_sym) do |*margs|
      raise "not implemented"
    end
  end
end

MyFFI.safe_attach_function :SendMessageTimeoutW, %i{HWND UINT WPARAM LPARAM UINT UINT PDWORD_PTR}, :LRESULT
MyFFI.safe_attach_function :SendMessageTimeoutA, %i{HWND UINT WPARAM LPARAM UINT UINT PDWORD_PTR}, :LRESULT

SendMessageTimeoutA(HWND_BROADCAST, WM_SETTINGCHANGE, 0, FFI::MemoryPointer.from_string("Environment").address, flags, 5000, nil)