# Dale

## 3.7 cstdio

### Details

Module: cstdio  
File: cstdio  

### Description

Bindings to `stdio.h`. Provides the following macro constants:
  
  * L-tmpnam
  * TMP-MAX
  * FILENAME-MAX
  * FOPEN-MAX
  * RAND-MAX
  * EXIT-FAILURE
  * EXIT-SUCCESS





### Variables

#### `stdin`

Linkage: `extern-c`  
Type: `(p file)`  

The standard input handle.


#### `stdout`

Linkage: `extern-c`  
Type: `(p file)`  

The standard output handle.


#### `stderr`

Linkage: `extern-c`  
Type: `(p file)`  

The standard error handle.




### Structs

#### `file`

Linkage: `extern`  
Members: N/A





#### `fpos`

Linkage: `extern`  
Members:  

  * `(n (array-of (MFPOS_T) char))`






### Enums

#### `buffer-mode`

Linkage: `extern`  
Type: `int`  
Members:  

  * _IOFBF
  * _IOLBF
  * _IONBF




#### `fseekorigin`

Linkage: `extern`  
Type: `int`  
Members:  

  * SET
  * CUR
  * END






### Functions

#### `fdopen`

Linkage: `extern-c`  
Returns: `(p file)`  
Parameters:  

  * `(fd int)`  
  * `(mode (p char))`  




#### `init-channels`

Linkage: `extern`  
Returns: `int`  
Parameters: `void`


Initialises `stdin`, `stdout` and `stderr`. Used implicitly by the
compiler, when available; there is almost certainly a better/safer way
to do this.


#### `fopen`

Linkage: `extern-c`  
Returns: `(p file)`  
Parameters:  

  * `(filename (p char))`  
  * `(mode (p char))`  




#### `freopen`

Linkage: `extern-c`  
Returns: `(p file)`  
Parameters:  

  * `(filename (p char))`  
  * `(mode (p char))`  
  * `(stream (p file))`  




#### `fflush`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `fclose`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `remove`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(filename (p char))`  




#### `rename`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(old-name (p char))`  
  * `(new-name (p char))`  




#### `tmpfile`

Linkage: `extern-c`  
Returns: `(p file)`  
Parameters: `void`





#### `tmpnam`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(buffer (p char))`  




#### `setvbuf`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  
  * `(buf (p char))`  
  * `(mode buffer-mode)`  
  * `(size size)`  




#### `setbuf`

Linkage: `extern-c`  
Returns: `void`  
Parameters:  

  * `(stream (p file))`  
  * `(buf (p char))`  




#### `fprintf`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  
  * `(str (p char))`  




#### `printf`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  




#### `sprintf`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  
  * `(fmt (p char))`  




#### `vprintf`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  
  * `(arg va-list)`  




#### `vfprintf`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  
  * `(str (p char))`  
  * `(arg va-list)`  




#### `vsprintf`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  
  * `(str (p char))`  
  * `(arg va-list)`  




#### `fgetc`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `fgets`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(str (p char))`  
  * `(n int)`  
  * `(stream (p file))`  




#### `fputc`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(c int)`  
  * `(stream (p file))`  




#### `fputs`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  
  * `(stream (p file))`  




#### `getc`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `getchar`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `gets`

Linkage: `extern-c`  
Returns: `(p char)`  
Parameters:  

  * `(str (p char))`  




#### `putc`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(c int)`  
  * `(stream (p file))`  




#### `putchar`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(c int)`  




#### `puts`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(str (p char))`  




#### `ungetc`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(c int)`  
  * `(stream (p file))`  




#### `fread`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(ptr (p void))`  
  * `(size size)`  
  * `(count size)`  
  * `(stream (p file))`  




#### `fwrite`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(ptr (p void))`  
  * `(size size)`  
  * `(count size)`  
  * `(stream (p file))`  




#### `fseek`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  
  * `(offset int)`  
  * `(origin fseekorigin)`  




#### `ftell`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `rewind`

Linkage: `extern-c`  
Returns: `void`  
Parameters:  

  * `(stream (p file))`  




#### `fgetpos`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  
  * `(ptr (p fpos))`  




#### `fsetpos`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  
  * `(ptr (p fpos))`  




#### `clearerr`

Linkage: `extern-c`  
Returns: `void`  
Parameters:  

  * `(stream (p file))`  




#### `feof`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `ferror`

Linkage: `extern-c`  
Returns: `int`  
Parameters:  

  * `(stream (p file))`  




#### `perror`

Linkage: `extern-c`  
Returns: `void`  
Parameters:  

  * `(str (p char))`  








### Macros

#### `MFPOS_T`

Linkage: `extern`  
Parameters: `void`