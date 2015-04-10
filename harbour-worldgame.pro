# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-worldgame

CONFIG += sailfishapp

SOURCES += src/harbour-worldgame.cpp

OTHER_FILES += qml/harbour-worldgame.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-worldgame.changes.in \
    rpm/harbour-worldgame.spec \
    rpm/harbour-worldgame.yaml \
    translations/*.ts \
    harbour-worldgame.desktop \
    qml/pages/MainMenu.qml \
    qml/pages/AboutPage.qml

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/harbour-worldgame-de.ts

