import QtQuick 2.0

Rectangle {
    id: bullet
    width: 10
    height: 10
    radius: 5
    color: "gray"

    Timer {
        id: timer
        interval: 10
        repeat: true
        onTriggered: {
            if (rotation == 0)  bullet.y-=10
            else if (rotation == 180) bullet.y+=10
            else if (rotation == -90) bullet.x-=10
            else if (rotation == 90) bullet.x+=10
            if ((bullet.x <= 0) || (bullet.y <= 0) || (bullet.parent.height <= bullet.y+bullet.height) || (bullet.parent.width <= bullet.x+bullet.width)) { tank.shoot = true; bullet.destroy() }
        }
    }
    Component.onCompleted: {
        tank.shoot = false
        rotation = tank.rotation
        if (rotation == 0) {
            x = tank.x + tank.width/3
            y = tank.y
        } else if (rotation == 180) {
            x = tank.x + tank.width/3
            y = tank.y + tank.height
        } else if (rotation == -90) {
            x = tank.x
            y = tank.y + tank.height/3
        } else if (rotation == 90) {
            x = tank.x + tank.width
            y = tank.y + tank.height/3
        }
        timer.start()
    }
}

