import QtQuick 2.0

Item {
    width: 48
    height: 48
    z: 0
    rotation: 0
    property string name: "eagle"

    Rectangle {
        id: rectangle1
        x: 21
        y: 8
        width: 2
        height: 32
        color: "#f7e53f"
    }

    Rectangle {
        id: rectangle2
        x: 21
        y: 8
        width: 19
        height: 15
        color: "#f40f0f"
        border.color: "#f7e53f"
        border.width: 2
    }

    Rectangle {
        visible: false
        id: rectangle3
        x: 23
        y: 3
        width: 2
        height: 42
        color: "#052efa"
        rotation: 45
    }

    Rectangle {
        visible: false
        id: rectangle4
        x: 23
        y: 3
        width: 2
        height: 42
        color: "#052efa"
        rotation: -45
    }
    states: [
        State {
            name: "game over"
            PropertyChanges {
                target: rectangle3
                visible: true
            }
            PropertyChanges {
                target: rectangle4
                visible: true
            }

        }

    ]

}

