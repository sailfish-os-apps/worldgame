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
            console.debug("dmapImage.width = " + width)
            console.debug("dmapImage.height = " + height)
        }
    }
}
