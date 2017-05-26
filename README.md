# Linssid for Fedora
some code

## Install
````
yum install qt5-qtbase qt5-qtsvg qt5-qtsvg-devel boost boost-devel
````

## Build using Docker Container
Mount the folder inside docker
```
docker run -it --rm -v /home/hikaru/Projects/linssid/gstm:/usr/app kawatei/qt5dev
```

## Patch the code
````
cd src/qwt-lib
sed -i -e 's/QT_STATIC_CONST/static const/g' src/qwt_transform.h
sed -i -e 's/QT_STATIC_CONST_IMPL/const/g' src/qwt_transform.cpp
````


## Todo
* update the dockerfile and push it to docker-hub
```
docker build -t kawatei/qt5dev .
```
* Update License Information, or get updates from source
