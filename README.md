[![استقرار](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
# yandex-browser-isolated
Isolated yandex browser in docker image
### Install
```shell
git clone https://github.com/Korolev-Oleg/yandex-browser-isolated.git; \
docker pull korolevoleg/yandex-browser-isolated; \
cd yandex-browser-isolated
```

### First run
With forwarding display settings
``` shell 
docker run --name=yandex-browser-isolated -it --net=host -e DISPLAY -v /tmp/.X11-unix korolevoleg/yandex-browser-isolated "`xauth list | head -n 1 | sed -r "s/\w+\/unix:/:0/g"`"
```

### Start
After browser close
```shell
docker start yandex-browser-isolated
```

### Todo
- [X] forwarding xdisplay
- [ ] forwarding sounds
