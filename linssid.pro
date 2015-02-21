TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS = qwt-lib \
          linssid-app
linssid-app.depends = qwt-lib
