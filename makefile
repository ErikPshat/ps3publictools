linux: make_self.c package_finalize.c
	gcc make_self.c -DNPDRM -lgmp -lcrypto -lz -o build/make_self_npdrm
	gcc make_self.c -lgmp -lcrypto -lz -o build/make_self
	gcc package_finalize.c -lcrypto -o build/package_finalize

windows: make_self.c package_finalize.c
	gcc make_self.c -DNPDRM -I"C:\GnuWin32\include" -L"C:\OpenSSL\lib\MinGW" -lgmp -leay32 "C:\GnuWin32\bin\zlib1.dll" -o build/make_self_npdrm.exe
	gcc make_self.c -I"C:\GnuWin32\include" -L"C:\OpenSSL\lib\MinGW" -lgmp -leay32 "C:\GnuWin32\bin\zlib1.dll" -o build/make_self.exe
	gcc package_finalize.c -L"C:\OpenSSL\lib\MinGW" -leay32 -o build/package_finalize.exe
	
osx: make_self.c package_finalize.c
	gcc make_self.c -DNPDRM -I/opt/local/include -I/opt/local -L/opt/local/lib -lgmp -lcrypto -lz -o build/make_self_npdrm
	gcc make_self.c -I/opt/local/include -I/opt/local -L/opt/local/lib -lgmp -lcrypto -lz -o build/make_self
	gcc package_finalize.c  -I/opt/local/include -I/opt/local -L/opt/local/lib -lcrypto -o build/package_finalize
