import QtQuick 2.0

Item {
    id: tank
    width: 48
    height: 48
    focus: true
    property var bullet
    property bool shoot: false
    property int currentKey
    property int nCell
    property string name: "tank"

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
            if (rotation == 0) {
                if (window.contains(Qt.point(tank.x+24,tank.y-4)) == false) return
                if (window.childAt(tank.x+24,tank.y-4) != null) return
                tank.y+=-4
            }
            else if (rotation == 180) {
                if (window.contains(Qt.point(tank.x+24,tank.y+52)) == false) return
                if (window.childAt(tank.x+24,tank.y+52) != null) return
                tank.y+=4
            }
            else if (rotation == -90) {
                if (window.contains(Qt.point(tank.x-4,tank.y+24)) == false) return
                if (window.childAt(tank.x-4,tank.y+24) != null) return
                tank.x+=-4
            }
            else if (rotation == 90) {
                if (window.contains(Qt.point(tank.x+52,tank.y+24)) == false) return
                if (window.childAt(tank.x+52,tank.y+24) != null) return
                tank.x+=4
            }
        }
    }

    Keys.onPressed: {
        if (event.isAutoRepeat == true) return;
        currentKey = event.key
        if (event.key == Qt.Key_Up) { rotation = 0; }
        else if (event.key == Qt.Key_Down) { rotation = 180; }
        else if (event.key == Qt.Key_Left) { rotation = -90; }
        else if (event.key == Qt.Key_Right) { rotation = 90; }
        if ((rotation == 0) || (rotation == 180)) { nCell = tank.x/24 + 0.5; tank.x = nCell*24 }
        else if ((rotation == 90) || (rotation == -90)) { nCell = tank.y/24 + 0.5; tank.y = nCell*24 }
        if(timer.running == true) return;
        timer.start()
    }
    Keys.onReleased: {
        if (event.isAutoRepeat == true) return;
        if (event.key != currentKey) return;
        timer.stop()
    }

    Keys.onSpacePressed: {
        if (shoot == true) return;
        var bulletComponent = Qt.createComponent("Bullet.qml")
        if(bulletComponent.status == Component.Ready)
            bullet = bulletComponent.createObject(tank.parent)
    }

}

