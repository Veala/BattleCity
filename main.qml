import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    id: win
    visible: true
    width: 700
    height: 624
    color: "green"
    property int enemies: 20
    property int lives: 3
    property int nCurrentEnemies: 0

    BattleField {
        id: bf
    }
    Text {
        anchors.left: bf.right
        anchors.right: parent.right
        anchors.top: parent.top
        font.pixelSize: 12
        wrapMode: Text.WordWrap
        color: "white"
        font.bold: true
        text: "Enemies: " + win.enemies + "\nLives: " + win.lives
    }
}
