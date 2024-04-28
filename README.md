Create a fedora WSL2 distro from the official fedora docker image

![image](https://github.com/xtenduke/wslfedora/assets/5002212/1abc66a2-6b1b-4f66-88e2-906ae227e99e)


### What works
- GUI apps (wslg)
- Audio

### What doesnt / untested
- Gpu accel / cuda

### Usage

- Clone the repo, cd to the repo dir
- Build the image
- Run image as a docker container
- Get container id and export variable
- Export container as tarfile

```
docker build --build-arg USER=user --build-arg PASSWORD=password -t fedora-wsl .
docker run -t fedora-wsl echo done
export CONTAINER_ID=$(docker container ls -a | grep -i fedora-wsl | awk '{print $1}') && echo $CONTAINER_ID
docker export $CONTAINER_ID > /mnt/c/temp/fedora-wsl.tar
```


(Windows)<br> import as WSL distro - NOTE the installation directory must be created (i.e. C:\wsl)
```
wsl --import Fedora C:\wsl\Fedora C:\temp\fedora-wsl.tar
```

(Windows) Start the WSL distro
```
wsl -d fedora
```
