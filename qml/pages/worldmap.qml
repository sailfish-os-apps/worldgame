import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: worldmapPage
    allowedOrientations: Orientation.Landscape

    Rectangle {
        id: ocean
        anchors.fill: parent
        color: "#75C5F0"  // Ocean blue / turkis
    }

    Image {
        id: worldImage
        anchors.centerIn: parent
        anchors.fill: parent
        source: "img/Weltkarte.svg"
    }
    MouseArea {
        id: nordamArea
        anchors.left: parent.left
        anchors.top: parent.top
        width: worldImage.width * 0.40
        height: worldImage.height * 0.48
        onClicked: {
            console.log("North America clicked")
            pageStack.push(Qt.resolvedUrl("dMap.qml"), {"mappe" : "img/amnord.svg"})
        }
    }
    MouseArea {
        id: sudamArea
        anchors.left: parent.left
        anchors.top: nordamArea.bottom
        width: worldImage.width * 0.40
        height: worldImage.height - nordamArea.height
        onClicked: {
            console.log("South America clicked")
            pageStack.push(Qt.resolvedUrl("dMap.qml"), {"mappe" : "img/amsud.svg"})
        }
    }
    MouseArea {
        id: europeArea
        anchors.left: nordamArea.right
        anchors.top: parent.top
        width: worldImage.width * 0.56 - nordamArea.width
        height: worldImage.height * 0.33
        onClicked: {
            console.log("Europe clicked")
            pageStack.push(Qt.resolvedUrl("dMap.qml"), {"mappe" : "img/europa.svg"})
        }
    }
    MouseArea {
        id: africaArea
        anchors.left: nordamArea.right
        anchors.top: europeArea.bottom
        width: worldImage.width * 0.56 - nordamArea.width
        height: worldImage.height - europeArea.height
        onClicked: {
            console.log("Africa clicked")
            pageStack.push(Qt.resolvedUrl("dMap.qml"), {"mappe" : "img/afrika.svg"})
        }
    }
    MouseArea {
        id: asiaArea
        anchors.left: europeArea.right
        anchors.top: parent.top
        width: worldImage.width - nordamArea.width - europeArea.width
        height: worldImage.height * 0.67
        onClicked: {
            console.log("Asia clicked")
            pageStack.push(Qt.resolvedUrl("dMap.qml"), {"mappe" : "img/asien.svg"})
        }
    }
    MouseArea {
        id: australiaArea
        anchors.left: europeArea.right
        anchors.top: asiaArea.bottom
        width: worldImage.width - nordamArea.width - europeArea.width
        height: worldImage.height - asiaArea.height
        onClicked: {
            console.log("Australia clicked")
            pageStack.push(Qt.resolvedUrl("dMap.qml"), {"mappe" : "img/australien.svg"})
        }
    }
    Toolbar {
    z: 99
    }
}
