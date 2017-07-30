import QtQuick 2.0

Rectangle {
    id: bullet
    width: 10
    height: 10
    radius: 5
    property string name: "bullet"
    property string bornFrom
    color: "gray"

    Timer {
        id: timer
        interval: 10
        repeat: true
        property var childAtwindow
        function checkZone(chX,chY,dx,dy) {
            if (window.contains(Qt.point(bullet.x+chX,bullet.y+chY)) == false) {
                if (bornFrom == "tank") tank.shoot = false;
                bullet.destroy(); return false;
            }
            childAtwindow = window.childAt(bullet.x+chX,bullet.y+chY)
            if (childAtwindow != null) {
                if ((bornFrom == "tank") && (childAtwindow.name == "enemyTank")) {
                    childAtwindow.destroy()
                    win.enemies-=1; win.nCurrentEnemies-=1
                    window.checkOnWin()
                } else if ((bornFrom == "enemyTank") && (childAtwindow.name == "tank")) {
                    window.hit()
                } else if (childAtwindow.name == "brick") {
                    childAtwindow.destroy()
                    childAtwindow = window.childAt(bullet.x+chX+dx,bullet.y+chY+dy)
                    if (childAtwindow != null) {
                        if (childAtwindow.name == "brick") childAtwindow.destroy()
                    }
                } else if (childAtwindow.name == "eagle") {
                    window.loss()
                } else if (childAtwindow.name == "bullet") {
                    if (childAtwindow.bornFrom == "tank") tank.shoot = false;
                    childAtwindow.destroy()
                }
                if (bornFrom == "tank") tank.shoot = false;
                bullet.destroy(); return false;
            }
            return true
        }
        onTriggered: {
            if (rotation == 0) {
                if (checkZone(5, -10, -2, 0) == true) bullet.y+=-10
            } else if (rotation == 180) {
                if (checkZone(5, 20, -2, 0) == true) bullet.y+=10
            } else if (rotation == -90) {
                if (checkZone(-10, 5, 0, -2) == true) bullet.x+=-10
            } else if (rotation == 90) {
                if (checkZone(20, 5, 0, -2) == true) bullet.x+=10
            }
        }
    }
    Component.onCompleted: {
        //parent == tank or enemyTank
        bornFrom = parent.name
        if (bornFrom == "tank") parent.shoot = true
        rotation = parent.rotation
        if (rotation == 0) {
            x = parent.x + parent.width/2 - width/2
            y = parent.y
        } else if (rotation == 180) {
            x = parent.x + parent.width/2 - width/2
            y = parent.y + parent.height
        } else if (rotation == -90) {
            x = parent.x
            y = parent.y + parent.height/2 - height/2
        } else if (rotation == 90) {
            x = parent.x + parent.width
            y = parent.y + parent.height/2 - height/2
        }
        parent = window
        timer.start()
    }
}

