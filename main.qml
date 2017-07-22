import QtQuick 2.4
import QtQuick.Window 2.2
import "Tank.qml"

Window {
    visible: true
    width: 800
    height: 800
    color: "black"
    Tank {
        anchors.centerIn: parent
    }
}
