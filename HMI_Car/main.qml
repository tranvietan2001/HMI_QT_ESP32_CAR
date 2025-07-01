import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: rootMetter
    width: 1465
    height: 634
    visible: true
    color: "transparent"
    title: qsTr("HMI-Meter")

    Image {
        id: imgBackgroundMetter
        source: "image/background_meter.png"
    }

    Rectangle{
        id: recTachoBg
        width: 460
        height: 460
        color: "transparent"
        x: 59
        y: 105

        Rectangle{
            id: recIndicatorTacho
            width: 410
            height: 16
            color: "transparent"
            anchors.centerIn: recTachoBg
            rotation: 200  // -20 ~200
            Image {
                id: imgIndicatorTacho
                source: "image/indicator.png"
                anchors{
                    left: recIndicatorTacho.left
                    leftMargin: 20
                }
            }
        }

        Image {
            id: imgScopeValTachoBg
            source: "image/in_val.png"
        }

        Image {
            id: imgEngTemp
            source: "image/engine_temp_indicator.png"
            anchors{
                bottom: recTachoBg.bottom
                bottomMargin: 30
                horizontalCenter: recTachoBg.horizontalCenter
            }
        }

        Rectangle{
            id: recIndicatorEngTemp
            width: 300
            height: 16
            color: "transparent"
            rotation: 239 //305~239
            anchors.centerIn: recTachoBg

            Image {
                id: imgEngTempIndicator
                source: "image/indicator_2.png"
                rotation: 90
                smooth: true
                anchors{
                    left: recIndicatorEngTemp.left
                    leftMargin: 10

                }
            }
        }

        Rectangle{
            id: recTextTacho
            color: "transparent"
            anchors.fill: recTachoBg
            // opacity: 0.5

            Text {
                id: valTachoTxt
                text: qsTr("999")
                color: "white"
                font.pointSize: 65
                font.family: myFont.font.family
                font.bold: true
                font.letterSpacing: -10

                anchors{
                    top: parent.top
                    topMargin: 160
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                id: unitTachoTxt
                text: qsTr("x1000 rpm")
                color: "white"
                font.pointSize: 12
                font.family: myFont.font.family
                font.italic: true

                anchors{
                    top: valTachoTxt.bottom
                    topMargin: 13
                    horizontalCenter: parent.horizontalCenter
                }

            }
        }
    }

    Rectangle{
        id: recSpeedBg
        width: 460
        height: 460
        color: "transparent"
        x: 945
        y: 104
        // opacity: 0.5

        Rectangle{
            id: recIndicatorSpeed
            width: 410
            height: 16
            color: "transparent"
            anchors.centerIn: recSpeedBg
            rotation: -20
            Image {
                id: imgIndicatorSpeed
                source: "image/indicator.png"
                anchors{
                    left: recIndicatorSpeed.left
                    leftMargin: 20
                }
            }
        }

        Image {
            id: imgScopeValSpeedBg
            source: "image/in_val.png"
        }

        Image {
            id: imgFuel
            source: "image/fuel_indicator.png"
            anchors{
                bottom: recSpeedBg.bottom
                bottomMargin: 30
                horizontalCenter: recSpeedBg.horizontalCenter
            }
        }

        Rectangle{
            id: recIndicatorFuel
            width: 300
            height: 16
            color: "transparent"
            rotation: 239 //305~239
            anchors.centerIn: recSpeedBg

            Image {
                id: imgFuelIndicator
                source: "image/indicator_2.png"
                rotation: 90
                smooth: true
                anchors{
                    left: recIndicatorFuel.left
                    leftMargin: 10
                }
            }
        }

        Rectangle{
            id: recTextSpeed
            color: "transparent"
            anchors.fill: recSpeedBg
            // opacity: 0.5

            Text {
                id: valSpeedTxt
                text: qsTr("999")
                color: "white"
                font.pointSize: 65
                font.family: myFont.font.family
                font.bold: true
                font.letterSpacing: -10

                anchors{
                    top: parent.top
                    topMargin: 160
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                id: unitSpeedTxt
                text: qsTr("Km/h")
                color: "white"
                font.pointSize: 12
                font.family: myFont.font.family
                font.italic: true

                anchors{
                    top: valSpeedTxt.bottom
                    topMargin: 13
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }

    }

    Rectangle{
        id: recCenter
        width: 400
        height: 320
        x: 532
        y: 146
        color: "transparent"

        Image {
            id: carCenterImg
            source: "image/car_center.png"
            smooth: true
            anchors{
                bottom: recCenter.bottom
                bottomMargin: 0
                horizontalCenter: recCenter.horizontalCenter
            }

        }

        // Rectangle{
        //     id: recInforDiff
        //     width: 280
        //     height: 280
        //     radius: 10
        //     anchors{
        //         centerIn: parent
        //     }
        // }
    }


    FontLoader{
        id: myFont
        source: "font/font_utm_micra.TTF"
    }


    // Rectangle {
    //        anchors.fill: parent
    //        color: "white"

    //        Image {
    //            id: image1
    //            source: "image/in_val.png"
    //            anchors.fill: parent
    //            opacity: 1.0

    //            NumberAnimation on opacity {
    //                from: 1.0
    //                to: 0.0
    //                duration: 10000
    //                running: true
    //                onFinished: {
    //                    image2.opacity = 1.0;
    //                }
    //            }
    //        }

    //        Image {
    //            id: image2
    //            source: "image/in_val_warn.png"
    //            anchors.fill: parent
    //            opacity: 0.0

    //            NumberAnimation on opacity {
    //                from: 0.0
    //                to: 1.0
    //                duration: 10000
    //            }
    //        }
    //    }

}
