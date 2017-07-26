import QtQuick 2.0

Item {
    id: tank
    width: 48
    height: 48
    focus: true
    property var bullet
    property bool shoot: false
    property int currentKey

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

    Timer {
        id: timer
        interval: 20
        repeat: true
        onTriggered: {
            if (rotation == 0) tank.y+=-5
            else if (rotation == 180) tank.y+=5
            else if (rotation == -90) tank.x+=-5
            else if (rotation == 90) tank.x+=5
        }
    }

    Keys.onPressed: {
        if (event.isAutoRepeat == true) return;
        currentKey = event.key
        if (event.key == Qt.Key_Up) rotation = 0
        else if (event.key == Qt.Key_Down) rotation = 180
        else if (event.key == Qt.Key_Left) rotation = -90
        else if (event.key == Qt.Key_Right) rotation = 90
        if(timer.running == true) return;
        timer.start()
    }
    Keys.onReleased: {
        if (event.isAutoRepeat == true) return;
        if (event.key != currentKey) return;
        timer.stop()
    }

//    Keys.onUpPressed: {
//        if (y <= 0) return;
//        rotation = 0
//        y+=-5
//    }
//    Keys.onDownPressed: {
//        if (parent.height <= y+height) return;
//        rotation = 180
//        y+=5
//    }
//    Keys.onLeftPressed: {
//        if (x <= 0) return;
//        rotation = -90
//        x+=-5
//    }
//    Keys.onRightPressed: {
//        if (parent.width <= x+width) return;
//        rotation = 90
//        x+=5
//    }
    Keys.onSpacePressed: {
        if (shoot == true) return;
        var bulletComponent = Qt.createComponent("Bullet.qml")
        if(bulletComponent.status == Component.Ready)
            bullet = bulletComponent.createObject(tank.parent)
    }

}

