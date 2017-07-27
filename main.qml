import QtQuick 2.4
import QtQuick.Window 2.2

Window {
//    id: window
    visible: true
    width: 624
    height: 624
    color: "black"
//    property string name: "base"
    Item {
        id: window
        anchors.fill: parent
        property string name: "base"

    Tank {
        id: tank
        x: 192
        y: 576
    }

    Armor { x: 0; y: 336; }     Armor { x: 24; y: 336; }
    Armor { x: 576; y: 336; }   Armor { x: 600; y: 336; }
    Armor { x: 288; y: 144; }   Armor { x: 288; y: 168; }    Armor { x: 312; y: 144; }    Armor { x: 312; y: 168; }
    }
}
