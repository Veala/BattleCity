import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    width: 700
    height: 624
    color: "green"

    BattleField {
        x: parent.x
        y: parent.y
    }
}
