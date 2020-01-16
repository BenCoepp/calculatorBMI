import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Item {
    width: 700
    height: 600

    Rectangle {
        id: rectangle
        width: 200
        height: 200
        color: "#18bc9c"
        anchors.fill: parent

        PageIndicator {
            id: pageIndicator
            x: 326
            y: 572
            count: 4
            currentIndex: swipeView.currentIndex
        }

        SwipeView {
            id: swipeView
            x: 0
            y: 40
            width: 700
            height: 560
            currentIndex: 0
            Component.onCompleted: contentItem.interactive = false

            Item {
                width: 700
                height: 560

                RadioButton {
                    id: radioButton
                    x: 481
                    y: 119
                    onClicked: {
                        roundButton.enabled = true
                        image.source = "qrc:/maleFN1.jpg"
                        image1.source = "qrc:/maleFN1.jpg"
                        image2.source = "qrc:/maleFN1.jpg"
                        image3.source = "qrc:/maleFN1.jpg"
                    }
                }

                RadioButton {
                    id: radioButton1
                    x: 173
                    y: 119
                    checked: false
                    checkable: true
                    onClicked: {
                        roundButton.enabled = true
                        image.source = "qrc:/femaleFN1.png"
                        image1.source = "qrc:/femaleFN1.png"
                        image2.source = "qrc:/femaleFN1.png"
                        image3.source = "qrc:/femaleFN1.png"
                    }
                }

                Label {
                    id: label1
                    x: 533
                    y: 127
                    text: qsTr("Male")
                    verticalAlignment: Text.AlignTop
                    font.pointSize: 20
                }

                Label {
                    id: label2
                    x: 104
                    y: 127
                    text: qsTr("Female")
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    font.pointSize: 20
                }

                RoundButton {
                    id: roundButton
                    x: 533
                    y: 468
                    width: 120
                    text: "Next ->"
                    enabled: false
                    font.pointSize: 15
                    onClicked: {
                        swipeView.setCurrentIndex(1)
                    }
                }

                Image {
                    id: image
                    x: 225
                    y: 13
                    width: 250
                    height: 500
                    fillMode: Image.PreserveAspectCrop
                    source: "maleFN1.jpg"
                }
            }

            Item {
                width: 700
                height: 560

                SpinBox {
                    id: spinBox
                    x: 481
                    y: 110
                    value: 14
                }

                Label {
                    id: label3
                    x: 481
                    y: 50
                    height: 25
                    text: qsTr("Height:")
                    font.pointSize: 20
                }

                Label {
                    id: label4
                    x: 481
                    y: 80
                    height: 25
                    text: qsTr("100cm +")
                    font.pointSize: 15
                }

                RoundButton {
                    id: roundButton1
                    x: 533
                    y: 468
                    width: 120
                    text: "Next ->"
                    enabled: true
                    font.pointSize: 15
                    onClicked: {
                        swipeView.setCurrentIndex(2)
                    }
                }

                RoundButton {
                    id: roundButton2
                    x: 47
                    y: 468
                    width: 120
                    text: "<- Back"
                    enabled: true
                    font.pointSize: 15
                    onClicked: {
                        swipeView.setCurrentIndex(0)
                    }
                }

                Label {
                    id: label8
                    x: 66
                    y: 62
                    text: spinBox.value+100
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 50
                    horizontalAlignment: Text.AlignHCenter
                }

                Label {
                    id: label9
                    x: 53
                    y: 150
                    text: qsTr("Your Height:")
                    font.pointSize: 20
                    horizontalAlignment: Text.AlignHCenter
                }

                Image {
                    id: image1
                    x: 225
                    y: 13
                    width: 250
                    height: 500
                    fillMode: Image.PreserveAspectCrop
                    source: "femaleFN1.png"
                }

                Label {
                    id: label12
                    x: 95
                    y: 119
                    text: qsTr("cm")
                    font.pointSize: 20
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Item {
                width: 700
                height: 560

                SpinBox {
                    id: spinBox1
                    x: 481
                    y: 80
                    value: 45
                }

                Label {
                    id: label5
                    x: 481
                    y: 50
                    height: 25
                    text: qsTr("Weight:")
                    font.pointSize: 20
                }

                RoundButton {
                    id: roundButton3
                    x: 533
                    y: 468
                    width: 120
                    text: "Next ->"
                    enabled: true
                    font.pointSize: 15
                    onClicked: {
                        swipeView.setCurrentIndex(3)
                    }
                }

                RoundButton {
                    id: roundButton4
                    x: 47
                    y: 468
                    width: 120
                    text: "<- Back"
                    enabled: true
                    font.pointSize: 15
                    onClicked: {
                        swipeView.setCurrentIndex(1)
                    }
                }

                Label {
                    id: label6
                    x: 80
                    y: 70
                    text: spinBox1.value
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 50
                }

                Label {
                    id: label7
                    x: 53
                    y: 157
                    text: qsTr("Your Weight")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 20
                }

                Image {
                    id: image2
                    x: 225
                    y: 13
                    width: 250
                    height: 500
                    source: "femaleFN1.png"
                    fillMode: Image.PreserveAspectCrop
                }

                Label {
                    id: label13
                    x: 97
                    y: 126
                    text: qsTr("kg")
                    font.pointSize: 20
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            Item {
                width: 700
                height: 560

                RoundButton {
                    id: roundButton6
                    x: 47
                    y: 468
                    width: 120
                    text: "<- Back"
                    enabled: true
                    font.pointSize: 15
                    onClicked: {
                        swipeView.setCurrentIndex(2)
                    }
                }

                Label {
                    id: label10
                    x: 557
                    y: 50
                    height: 40
                    text: spinBox1.value/(((spinBox.value+100)/100)*((spinBox.value+100)/100))
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 30
                }

                Label {
                    id: label11
                    x: 532
                    y: 110
                    text: qsTr("Your BMI")
                    font.pointSize: 20
                }

                RoundButton {
                    id: roundButton5
                    x: 513
                    y: 260
                    width: 120
                    text: "New calculation"
                    font.pointSize: 12
                    onClicked: {
                        swipeView.setCurrentIndex(0)
                        spinBox.value = 14
                        spinBox1.value = 45
                        radioButton.checked = false
                        radioButton1.checked = false

                    }
                }

                Image {
                    id: image3
                    x: 225
                    y: 13
                    width: 250
                    height: 500
                    source: "femaleFN1.png"
                    fillMode: Image.PreserveAspectCrop
                }

                Rectangle {
                    id: rectangle1
                    x: 631
                    y: 50
                    width: 184
                    height: 40
                    color: "#18bc9c"
                }

                Label {
                    id: label14
                    x: 47
                    y: 110
                    text: qsTr("Where are You")
                    font.pointSize: 25
                }

                RoundButton {
                    id: roundButton7
                    x: 70
                    y: 183
                    width: 120
                    text: "Read More"
                    font.pointSize: 12
                    onClicked: {
                        swipeView.setCurrentIndex(4)
                    }
                }
            }

            Item {
                Image {
                    id: image4
                    x: 47
                    y: 46
                    width: 500
                    height: 400
                    fillMode: Image.PreserveAspectFit
                    source: "BMI_chart.gif"
                }

                RoundButton {
                    id: roundButton8
                    x: 47
                    y: 468
                    width: 120
                    text: "<- Back"
                    font.pointSize: 15
                    enabled: true
                    onClicked: {
                        swipeView.setCurrentIndex(3)
                    }
                }

                Label {
                    id: label15
                    x: 586
                    y: 60
                    text: spinBox1.value
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 50
                }

                Label {
                    id: label16
                    x: 559
                    y: 147
                    text: qsTr("Your Weight")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 20
                }

                Label {
                    id: label17
                    x: 571
                    y: 250
                    text: spinBox.value+100
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 50
                }

                Label {
                    id: label18
                    x: 558
                    y: 338
                    text: qsTr("Your Height:")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 20
                }
            }
        }

        Label {
            id: label
            x: 254
            y: 8
            height: 40
            text: qsTr("Calculator BMI")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 30
        }


    }

}
