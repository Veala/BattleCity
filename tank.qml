import QtQuick 2.0

Item {
    width: 48
    height: 48
//    Rectangle {
//        anchors.fill: parent
//        color: "white"
//    }

    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 4
        anchors.horizontalCenterOffset: 19
        width: 8
        height: 40
        color: "yellow"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 4
        anchors.horizontalCenterOffset: -19
        width: 8
        height: 40
        color: "yellow"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        width: 36
        height: 28
        color: "yellow"
        border.color: "black"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        width: 16
        height: 16
        color: "yellow"
        border.color: "black"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -10
        width: 5
        height: 26
        color: "yellow"
        border.color: "black"
    }    

}

