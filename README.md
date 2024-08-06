Create a fedora WSL2 distro from the official fedora docker image

![image](https://github.com/xtenduke/wslfedora/assets/5002212/1abc66a2-6b1b-4f66-88e2-906ae227e99e)


### What works
- GUI apps (wslg)
- Audio

### What doesnt / untested
- Gpu accel / cuda

### Usage
- Download the .tar from the latest release in windows
- import as WSL distro - NOTE the installation directory must be created (i.e. C:\wsl)
```
wsl --import Fedora C:\wsl\Fedora C:\path\to\fedora-wsl.tar
```

(Windows) Start the WSL distro
```
wsl -d Fedora
```
