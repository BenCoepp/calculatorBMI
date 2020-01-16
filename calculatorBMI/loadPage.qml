import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    width:700
    height: 600

    Rectangle{
        id: background
        anchors.fill: parent
        color: "#2c3e50"

        Rectangle {
            id: rectangle
            anchors.centerIn: parent
            width: 200
            height: 200
            color: "#ffffff"
            radius: 99

            Image {
                id: image
                anchors.centerIn: parent
                width: 140
                height: 140
                source: "lightbulb.jpg"
                fillMode: Image.PreserveAspectFit
            }
        }

        BusyIndicator {
            id: busyIndicator
            x: 320
            y: 458
        }
    }

}
