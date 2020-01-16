import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    minimumWidth: 700
    maximumWidth: 700

    minimumHeight: 600
    maximumHeight: 600
    title: qsTr("Calculator BMI")

    StackView{
        id:contentFrame
        width:700
        height: 600
        initialItem: Qt.resolvedUrl("qrc:/loadPage.qml")
    }
    Component.onCompleted: {
        contentFrame.replace("qrc:/mainPage.qml")
    }

}
