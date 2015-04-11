import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: dMapPage
    allowedOrientations: Orientation.Landscape
    property string mappe

    Rectangle {
        id: ocean
        anchors.fill: parent
        color: "#75C5F0"  // Ocean blue / turkis
    }

    Image {
        id: dMapImage
        anchors.centerIn: parent
        anchors.fill: parent
        source: dMapPage.mappe
        Component.onCompleted: {
            if (sourceSize.height > sourceSize.width) dMapPage.allowedOrientations = Orientation.Portrait
        }
    }
    Item {
        id: grid1
        Rectangle {
            id: wnArea
            anchors.top: parent.top
            anchors.left: parent.left
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("West North clicked")
                }
            }
        }
        Rectangle {
            id: vline1
            height: dMapPage.height
            width: 4
            color: Theme.primaryColor // TODO: Maybe something fancier
            x: (dMapPage.width * 0.33) + (width/2)
        }
        Rectangle {
            id: mnArea
            anchors.top: parent.top
            anchors.left: vline1.right
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("Middle North clicked")
                }
            }
        }
        Rectangle {
            id: vline2
            height: dMapPage.height
            width: 4
            color: Theme.primaryColor // TODO: Maybe something fancier
            x: (dMapPage.width * 0.66) + (width/2)
        }
        Rectangle {
            id: enArea
            anchors.top: parent.top
            anchors.left: vline2.right
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("East North clicked")
                }
            }
        }
        Rectangle {
            id: hline1
            height: 4
            width: dMapPage.width
            color: Theme.primaryColor // TODO: Maybe something fancier
            y: (dMapPage.height * 0.33) + (height/2)
        }
        Rectangle {
            id: wmArea
            anchors.top: hline1.bottom
            anchors.left: parent.left
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("West Middle clicked")
                }
            }
        }
        Rectangle {
            id: mmArea
            anchors.top: hline1.bottom
            anchors.left: vline1.right
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill:parent
                onClicked: {
                    console.debug("Middle Middle clicked")
                }
            }
        }
        Rectangle {
            id: emArea
            anchors.top: hline1.bottom
            anchors.left: vline2.right
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("East Middle clicked")
                }
            }
        }
        Rectangle {
            id: hline2
            height: 4
            width: dMapPage.width
            color: Theme.primaryColor // TODO: Maybe something fancier
            y: (dMapPage.height * 0.66) + (height+2)
        }
        Rectangle {
            id: wsArea
            anchors.top: hline2.bottom
            anchors.left: parent.left
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("West South clicked")
                }
            }
        }
        Rectangle {
            id: msArea
            anchors.top: hline2.bottom
            anchors.left: vline1.right
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("Middle South clicked")
                }
            }
        }
        Rectangle {
            id: esArea
            anchors.top: hline2.bottom
            anchors.left: vline2.right
            height: (dMapPage.height * 0.33)
            width: (dMapPage.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("East South clicked")
                }
            }
        }
    }
}
