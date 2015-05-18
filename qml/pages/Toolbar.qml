import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    width:parent.width
    height: Theme.iconSizeMedium
    Rectangle {
        id: bar
        color: "#4B4B4B"
        opacity: 0.8
        width: parent.width
        height: parent.height
        y: 0
    }
    Label {
        id: cityLabel
        anchors.centerIn: bar
        font.pixelSize: Theme.fontSizeLarge
        color: "white"
    }
    Row {
        anchors.top: parent.top
        anchors.right: parent.right
        Repeater {
            model: mainWindow.lp
            Image {
                id: life
                source: "img/star.svg"
                width: 32
                height: 32
            }
        }
    }
}
