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
        property int x_Length: 0
        property int y_Length: 0
        onTriggered: {
            var item
            if (rotation == 0) {
                y_Length+=4
                if (y_Length == 24) {
                    item = window.childAt(tank.x+24,tank.y-4)
                    if (item != null) {
                        y_Length+=-4
                        return
                        //console.log(window.childAt(tank.x+24,tank.y-4).name)
                    } else {
                        y_Length=4
                    }
                }
                tank.y+=-4
            }
            else if (rotation == 180) {
                y_Length+=4
                if (y_Length == 24) {
                    item = window.childAt(tank.x-24,tank.y+4)
                    if (item != null) {
                        y_Length+=-4
                        return
                        //console.log(window.childAt(tank.x+24,tank.y-4).name)
                    } else {
                        y_Length=4
                    }
                }
                tank.y+=4
            }
            else if (rotation == -90) {
//                x_Length+=-4
//                if (x_Length < 0) {
//                    x_Length+=4
//                    return
//                }
                tank.x+=-4
            }
            else if (rotation == 90) {
//                x_Length+=4
//                if (x_Length > 24) {
//                    x_Length+=-4
//                    return
//                }
                tank.x+=4
            }
        }
    }

    Keys.onPressed: {
        if (event.isAutoRepeat == true) return;
        var prevKey = currentKey
        currentKey = event.key
        if (event.key == Qt.Key_Up) {
            rotation = 0;
            if (prevKey == Qt.Key_Down) timer.y_Length = 24 - timer.y_Length;
            else if (prevKey != Qt.Key_Up) timer.y_Length=0;
        }
        else if (event.key == Qt.Key_Down) {
            rotation = 180;
            if (prevKey == Qt.Key_Up) timer.y_Length = 24 - timer.y_Length;
            else if (prevKey != Qt.Key_Down) timer.y_Length=0;
        }
        else if (event.key == Qt.Key_Left) { rotation = -90; timer.x_Length=0; }
        else if (event.key == Qt.Key_Right) { rotation = 90; timer.x_Length=24; }
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

