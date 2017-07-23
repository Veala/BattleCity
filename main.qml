import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    width: 800
    height: 800
    color: "black"

    Tank {
        id: tank
        x: 400
        y:400
        focus: true

        Keys.onUpPressed: {
            event.accepted = true
//            if(event.isAutoRepeat === false) {
//                console.log("event.isAutoRepeat === false")
//                return
//            }
            tank.rotation = 0
            tank.y+=-1
        }
        Keys.onDownPressed: {
            tank.rotation = 180
            tank.y+=5
        }
        Keys.onLeftPressed: {
            tank.rotation = -90
            tank.x+=-5
        }
        Keys.onRightPressed: {
            tank.rotation = 90
            tank.x+=5
        }

    }


}
