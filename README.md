Create a fedora WSL2 distro from the official fedora docker image

![Screenshot 2024-04-04 122559](https://github.com/xtenduke/wslfedora/assets/5002212/0a7a6ec6-6511-4b11-a2df-77043eeedc56)

### What works
- GUI apps (wslg)

### What doesnt / untested
- Gpu accel / cuda
- Audio

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
