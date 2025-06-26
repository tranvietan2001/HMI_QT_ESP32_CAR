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
        id: backgroundMetter
        source: "image/background_metter.png"
    }

    Rectangle{
        id: recTachoBg
        width: 460
        height: 460
        color: "transparent"
        x: 59
        y: 105

        Image {
            id: scopeValTachoBg
            source: "image/in_val.png"
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

        Image {
            id: scopeValSpeedBg
            source: "image/in_val_warn.png"
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
}
