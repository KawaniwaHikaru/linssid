TEMPLATE = app
DESTDIR = dist/Release/GNU-Linux-x86
TARGET = linssid
VERSION = 2.7
CONFIG -= debug_and_release app_bundle lib_bundle
CONFIG += release 
PKGCONFIG +=
QT = core gui widgets svg
SOURCES += AboutBox.cpp Getter.cpp MainForm.cpp main.cpp passBox.cpp prefsDialog.cpp
HEADERS += AboutBox.h Custom.h Getter.h MainForm.h passBox.h prefsDialog.h
FORMS += AboutBox.ui MainForm.ui passBox.ui prefsDialog.ui
RESOURCES +=
TRANSLATIONS +=
OBJECTS_DIR = build/Release/GNU-Linux-x86
MOC_DIR = 
RCC_DIR = 
UI_DIR = 
QMAKE_CC = gcc
QMAKE_CXX = g++
DEFINES += 
INCLUDEPATH += /usr/include/qt5
# /usr/local/qwt-6.1.0/include
INCLUDEPATH += ../qwt-lib/src
# LIBS += /usr/lib/x86_64-linux-gnu/libboost_regex.a 
# LIBS += -lboost_regex
LIBS += -l:libboost_regex.a
# /usr/local/qwt-6.1.0/lib/libqwt.a
LIBS += ../qwt-lib/lib/libqwt.a
QMAKE_CXXFLAGS += -std=c++11
#
TARGET = linssid
target.path = /usr/bin
INSTALLS += target
dtop.path = /usr/share/applications
dtop.files = linssid.desktop
INSTALLS += dtop
icons.path = /usr/share/pixmaps
icons.files = *.png
INSTALLS += icons
data.path = /usr/share/linssid
data.files = oui.datb linssid-pause.png linssid-start.png
INSTALLS += data
