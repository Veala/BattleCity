import QtQuick 2.0

Item {
    width: 35
    height: 50
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        anchors.horizontalCenterOffset: 14
        width: 7
        height: 37
        color: "yellow"
        border.color: "black"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        anchors.horizontalCenterOffset: -14
        width: 7
        height: 37
        color: "yellow"
        border.color: "black"
    }

    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        width: 25
        height: 25
        color: "yellow"
        border.color: "black"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        width: 15
        height: 15
        color: "yellow"
        border.color: "black"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -10
        width: 5
        height: 25
        color: "yellow"
        border.color: "black"
    }    

}

