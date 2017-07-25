import QtQuick 2.0

Item {
    id: tank
    width: 48
    height: 48
    focus: true
    property var bullet
    property bool shoot: true

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

    Keys.onUpPressed: {
        if (y <= 0) return;
        rotation = 0
        y+=-5
    }
    Keys.onDownPressed: {
        if (parent.height <= y+height) return;
        rotation = 180
        y+=5
    }
    Keys.onLeftPressed: {
        if (x <= 0) return;
        rotation = -90
        x+=-5
    }
    Keys.onRightPressed: {
        if (parent.width <= x+width) return;
        rotation = 90
        x+=5
    }
    Keys.onSpacePressed: {
        if (shoot == false) return;
        var bulletComponent = Qt.createComponent("Bullet.qml")
        if(bulletComponent.status == Component.Ready)
            bullet = bulletComponent.createObject(tank.parent)
    }

}

