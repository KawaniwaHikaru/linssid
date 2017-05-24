#Install
yum install qt5-qtbase qt5-qtsvg qt5-qtsvg-devel boost boost-devel

##Patch the code
cd qwt-lib
sed -i -e 's/QT_STATIC_CONST/static const/g' src/qwt_transform.h
sed -i -e 's/QT_STATIC_CONST_IMPL/const/g' src/qwt_transform.cpp

## Make
make

## Todo
use Docker for building
