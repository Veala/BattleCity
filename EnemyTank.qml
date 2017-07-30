import QtQuick 2.0

Item {
    id: enemyTank
    width: 48
    height: 48
    property var bullet
    property int nCell
    property string name: "enemyTank"
    Component.onCompleted: {
        rotation = 180
        timerMovement.start()
        timerChangeMovement.start()
        timerShot.interval = 1000
        timerShot.start()
    }

    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 4
        anchors.horizontalCenterOffset: 19
        width: 8
        height: 40
        color: "blue"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 4
        anchors.horizontalCenterOffset: -19
        width: 8
        height: 40
        color: "blue"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        width: 36
        height: 28
        radius: 18
        color: "blue"
        border.color: "black"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        width: 16
        height: 16
        radius: 8
        color: "blue"
        border.color: "black"
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -10
        width: 5
        height: 26
        color: "blue"
        border.color: "black"
    }

    function getRandomAngle() {
        //min == -1, max==2
        rotation = 90*(Math.floor(Math.random() * (2 - (-1) + 1)) + (-1));
        if ((rotation == 0) || (rotation == 180)) { nCell = x/24 + 0.5; x = nCell*24 }
        else if ((rotation == 90) || (rotation == -90)) { nCell = y/24 + 0.5; y = nCell*24 }
    }
    function getRandomTime() {
        //min == 10, max==1500
        return Math.floor(Math.random() * (1500 - (10) + 1)) + (10);
    }

    Timer {
        id: timerMovement
        interval: 40
        repeat: true
        function checkZone(chX,chY) {
            if (window.contains(Qt.point(parent.x+chX,parent.y+chY)) == false) return false
            if (window.childAt(parent.x+chX,parent.y+chY) != null) return false
            return true
        }

        onTriggered: {
            if (rotation == 0) {
                if (checkZone(24, -4) == true) parent.y+=-4
                else getRandomAngle()
            } else if (rotation == 180) {
                if (checkZone(24, 52) == true) parent.y+=4
                else  getRandomAngle()
            } else if (rotation == -90) {
                if (checkZone(-4, 24) == true) parent.x+=-4
                else getRandomAngle()
            } else if (rotation == 90) {
                if (checkZone(52, 24) == true) parent.x+=4
                else getRandomAngle()
            }
        }
    }

    Timer {
        id: timerChangeMovement
        interval: 3300
        repeat: true
        onTriggered: getRandomAngle()
    }
    Timer {
        id: timerShot
        repeat: true
        onTriggered: {
            interval = getRandomTime()
            shoot()
        }
    }

    function shoot() {
        var bulletComponent = Qt.createComponent("Bullet.qml")
        if(bulletComponent.status == Component.Ready)
            bullet = bulletComponent.createObject(enemyTank)
    }

}

