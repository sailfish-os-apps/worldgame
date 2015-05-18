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
                    grid2.visible = true ;
                    grid2.parent = wnArea ;
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
                    grid2.visible = true ;
                    grid2.parent = mnArea ;
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
                    grid2.visible = true ;
                    grid2.parent = enArea ;
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
                    grid2.visible = true ;
                    grid2.parent = wmArea ;
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
                    grid2.visible = true ;
                    grid2.parent = mmArea ;
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
                    grid2.visible = true ;
                    grid2.parent = emArea ;
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
                    grid2.visible = true ;
                    grid2.parent = wsArea ;
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
                    grid2.visible = true ;
                    grid2.parent = msArea ;
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
                    grid2.visible = true ;
                    grid2.parent = esArea ;
                }
            }
        }
    }



    Item {
        id: grid2
        visible: false
        height: parent.height
        width: parent.width
        Rectangle {
            id: aArea
            anchors.top: parent.top
            anchors.left: parent.left
            height: (parent.height * 0.5)
            width: (parent.width * 0.5)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("A clicked")
                }
            }
        }
        Rectangle {
            id: vline11
            height: parent.height
            width: 4
            color: Theme.primaryColor // TODO: Maybe something fancier
            x: (parent.width * 0.5) + (width/2)
        }
        Rectangle {
            id: bArea
            anchors.top: parent.top
            anchors.left: vline11.right
            height: (parent.height * 0.33)
            width: (parent.width * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("b clicked")
                }
            }
        }
        Rectangle {
            id: hline11
            height: 4
            width: parent.width
            color: Theme.primaryColor // TODO: Maybe something fancier
            y: (parent.height * 0.5) + (height/2)
        }
        Rectangle {
            id: cArea
            anchors.top: hline11.bottom
            anchors.left: parent.left
            height: (parent.height * 0.5)
            width: (parent.width * 0.5)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("c clicked")
                }
            }
        }
        Rectangle {
            id: dArea
            anchors.top: hline11.bottom
            anchors.left: vline11.right
            height: (parent.height * 0.5)
            width: (parent.width * 0.5)
            color: "transparent"
            MouseArea {
                anchors.fill:parent
                onClicked: {
                    console.debug("d clicked")
                }
            }
        }
    }


}
