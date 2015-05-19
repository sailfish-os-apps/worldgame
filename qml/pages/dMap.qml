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
        //fillMode: Image.PreserveAspectFit // Giving me headaches
        smooth: true
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
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("West North clicked")
                    grid2.visible = true ;
                    grid2.parent = wnArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: vline1
            height: dMapImage.paintedHeight
            width: 4
            color: Theme.primaryColor // TODO: Maybe something fancier
            x: (dMapImage.paintedWidth * 0.33) + (width/2)
        }
        Rectangle {
            id: mnArea
            anchors.top: parent.top
            anchors.left: vline1.right
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("Middle North clicked")
                    grid2.visible = true ;
                    grid2.parent = mnArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: vline2
            height: dMapImage.paintedHeight
            width: 4
            color: Theme.primaryColor // TODO: Maybe something fancier
            x: (dMapImage.paintedWidth * 0.66) + (width/2)
        }
        Rectangle {
            id: enArea
            anchors.top: parent.top
            anchors.left: vline2.right
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("East North clicked")
                    grid2.visible = true ;
                    grid2.parent = enArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: hline1
            height: 4
            width: dMapImage.paintedWidth
            color: Theme.primaryColor // TODO: Maybe something fancier
            y: (dMapImage.paintedHeight * 0.33) + (height/2)
        }
        Rectangle {
            id: wmArea
            anchors.top: hline1.bottom
            anchors.left: parent.left
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("West Middle clicked")
                    grid2.visible = true ;
                    grid2.parent = wmArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: mmArea
            anchors.top: hline1.bottom
            anchors.left: vline1.right
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill:parent
                onClicked: {
                    console.debug("Middle Middle clicked")
                    grid2.visible = true ;
                    grid2.parent = mmArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: emArea
            anchors.top: hline1.bottom
            anchors.left: vline2.right
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("East Middle clicked")
                    grid2.visible = true ;
                    grid2.parent = emArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: hline2
            height: 4
            width: dMapImage.paintedWidth
            color: Theme.primaryColor // TODO: Maybe something fancier
            y: (dMapImage.paintedHeight * 0.66) + (height+2)
        }
        Rectangle {
            id: wsArea
            anchors.top: hline2.bottom
            anchors.left: parent.left
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("West South clicked")
                    grid2.visible = true ;
                    grid2.parent = wsArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: msArea
            anchors.top: hline2.bottom
            anchors.left: vline1.right
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("Middle South clicked")
                    grid2.visible = true ;
                    grid2.parent = msArea ;
                    grid2.markField(undefined)
                }
            }
        }
        Rectangle {
            id: esArea
            anchors.top: hline2.bottom
            anchors.left: vline2.right
            height: (dMapImage.paintedHeight * 0.33)
            width: (dMapImage.paintedWidth * 0.33)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("East South clicked")
                    grid2.visible = true ;
                    grid2.parent = esArea ;
                    grid2.markField(undefined)
                }
            }
        }
    }



    Item {
        id: grid2
        visible: false
        height: parent.height
        width: parent.width

        function markField(obj) {
            aArea.border.width = 0
            bArea.border.width = 0
            cArea.border.width = 0
            dArea.border.width = 0
            obj.border.color = "yellow"
            obj.border.width = 4
        }

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
                    grid2.markField(aArea)
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
            height: (parent.height * 0.5)
            width: (parent.width * 0.5)
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.debug("B clicked")
                    grid2.markField(bArea)
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
                    console.debug("C clicked")
                    grid2.markField(cArea)
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
                    console.debug("D clicked")
                    grid2.markField(dArea)
                }
            }
        }
    }


}
