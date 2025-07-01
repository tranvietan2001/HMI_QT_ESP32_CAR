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

        Text {
            id: checkTXT
            text: qsTr("9000")
            color: "red"
            font.pointSize: 50
            font.family: myFont.font.family
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

    }

    Rectangle{
        id: recCenter
        width: 400
        height: 320
        x: 532
        y: 146
        color: "transparent"
        // anchors.centerIn: parent
        // opacity: 0.5

        Image {
            id: carCenterImg
            source: "image/car_center.png"
            smooth: true
            anchors{
                bottom: recCenter.bottom
                bottomMargin: 20
                horizontalCenter: recCenter.horizontalCenter
            }

        }
    }


    FontLoader{
        id: myFont
        source: "font/font_utm_micra.TTF"
    }

}
