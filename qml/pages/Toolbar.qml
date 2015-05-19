import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    width:parent.width
    height: Theme.iconSizeMedium

    property bool actionButtons: false
    signal abortClicked;
    signal applyClicked;

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
        text: mainWindow.cityName
    }
    IconButton {
        id: abortBtn
        anchors.left: cityLabel.right
        anchors.leftMargin: Theme.paddingMedium
        icon.source: "img/abort.png"
        icon.width: Theme.iconSizeMedium
        icon.height: Theme.iconSizeMedium
        onClicked: abortClicked();
        width: Theme.iconSizeMedium
        height: Theme.iconSizeMedium
        visible: actionButtons
    }
    IconButton {
        id: applyBtn
        anchors.left: abortBtn.right
        anchors.leftMargin: Theme.paddingMedium
        icon.source: "img/apply.png"
        icon.width: Theme.iconSizeMedium
        icon.height: Theme.iconSizeMedium
        onClicked: applyClicked();
        width: Theme.iconSizeMedium
        height: Theme.iconSizeMedium
        visible: actionButtons
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
