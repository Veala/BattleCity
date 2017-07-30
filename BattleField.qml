import QtQuick 2.0

Rectangle {
    id: window
    width: 624
    height: 624
    color: "black"
    Tank { id: tank; x: 192; y: 576 }
    Armor { x: 0; y: 336; }     Armor { x: 24; y: 336; }
    Armor { x: 576; y: 336; }   Armor { x: 600; y: 336; }
    Armor { x: 288; y: 144; }   Armor { x: 288; y: 168; }    Armor { x: 312; y: 144; }    Armor { x: 312; y: 168; }

    NumberAnimation {
        id: y_anim
        target: text1
        properties: "y"
        from: 630; to: 312; duration: 1000
    }

    signal loss()
    onLoss: {
        tank.focus=false
        y_anim.start()
        eagle1.state = "game over"
    }
    signal hit()
    onHit: {
        parent.lives-=1
        if (parent.lives<0) {
            parent.lives+=1
            tank.destroy()
            y_anim.start()
            eagle1.state = "game over"
        } else {
            tank.x=192
            tank.y=576
            tank.rotation=0
        }
    }
    signal checkOnWin()
    onCheckOnWin: {
        if ((win.enemies == 0) && (win.nCurrentEnemies == 0)) {
            tank.focus=false
            text1.text = "You win!"
            y_anim.start()
        }
    }



    //designer--------------------------------------------------------------
    Brick {
        id: brick1
        x: 48
        y: 48
    }

    Brick {
        id: brick2
        x: 72
        y: 48
    }

    Brick {
        id: brick3
        x: 48
        y: 72
    }

    Brick {
        id: brick4
        x: 72
        y: 72
    }

    Brick {
        id: brick5
        x: 48
        y: 96
    }

    Brick {
        id: brick6
        x: 72
        y: 96
    }

    Brick {
        id: brick7
        x: 48
        y: 120
    }

    Brick {
        id: brick8
        x: 72
        y: 120
    }

    Brick {
        id: brick9
        x: 48
        y: 144
    }

    Brick {
        id: brick10
        x: 72
        y: 144
    }

    Brick {
        id: brick11
        x: 48
        y: 168
    }

    Brick {
        id: brick12
        x: 72
        y: 168
    }

    Brick {
        id: brick13
        x: 48
        y: 192
    }

    Brick {
        id: brick14
        x: 72
        y: 192
    }

    Brick {
        id: brick15
        x: 48
        y: 216
    }

    Brick {
        id: brick16
        x: 72
        y: 216
    }

    Brick {
        id: brick17
        x: 48
        y: 240
    }

    Brick {
        id: brick18
        x: 72
        y: 240
    }

    Brick {
        id: brick19
        x: 144
        y: 48
    }

    Brick {
        id: brick20
        x: 168
        y: 48
    }

    Brick {
        id: brick21
        x: 144
        y: 72
    }

    Brick {
        id: brick22
        x: 168
        y: 72
    }

    Brick {
        id: brick23
        x: 144
        y: 96
    }

    Brick {
        id: brick24
        x: 168
        y: 96
    }

    Brick {
        id: brick25
        x: 144
        y: 120
    }

    Brick {
        id: brick26
        x: 168
        y: 120
    }

    Brick {
        id: brick27
        x: 144
        y: 144
    }

    Brick {
        id: brick28
        x: 168
        y: 144
    }

    Brick {
        id: brick29
        x: 144
        y: 168
    }

    Brick {
        id: brick30
        x: 168
        y: 168
    }

    Brick {
        id: brick31
        x: 144
        y: 192
    }

    Brick {
        id: brick32
        x: 168
        y: 192
    }

    Brick {
        id: brick33
        x: 144
        y: 216
    }

    Brick {
        id: brick34
        x: 168
        y: 216
    }

    Brick {
        id: brick35
        x: 144
        y: 240
    }

    Brick {
        id: brick36
        x: 168
        y: 240
    }

    Brick {
        id: brick37
        x: 432
        y: 48
    }

    Brick {
        id: brick38
        x: 456
        y: 48
    }

    Brick {
        id: brick39
        x: 432
        y: 72
    }

    Brick {
        id: brick40
        x: 456
        y: 72
    }

    Brick {
        id: brick41
        x: 432
        y: 96
    }

    Brick {
        id: brick42
        x: 456
        y: 96
    }

    Brick {
        id: brick43
        x: 432
        y: 120
    }

    Brick {
        id: brick44
        x: 456
        y: 120
    }

    Brick {
        id: brick45
        x: 432
        y: 144
    }

    Brick {
        id: brick46
        x: 456
        y: 144
    }

    Brick {
        id: brick47
        x: 432
        y: 168
    }

    Brick {
        id: brick48
        x: 456
        y: 168
    }

    Brick {
        id: brick49
        x: 432
        y: 192
    }

    Brick {
        id: brick50
        x: 456
        y: 192
    }

    Brick {
        id: brick51
        x: 432
        y: 216
    }

    Brick {
        id: brick52
        x: 456
        y: 216
    }

    Brick {
        id: brick53
        x: 432
        y: 240
    }

    Brick {
        id: brick54
        x: 456
        y: 240
    }

    Brick {
        id: brick55
        x: 240
        y: 288
    }

    Brick {
        id: brick56
        x: 528
        y: 48
    }

    Brick {
        id: brick57
        x: 552
        y: 48
    }

    Brick {
        id: brick58
        x: 528
        y: 72
    }

    Brick {
        id: brick59
        x: 552
        y: 72
    }

    Brick {
        id: brick60
        x: 528
        y: 96
    }

    Brick {
        id: brick61
        x: 552
        y: 96
    }

    Brick {
        id: brick62
        x: 528
        y: 120
    }

    Brick {
        id: brick63
        x: 552
        y: 120
    }

    Brick {
        id: brick64
        x: 528
        y: 144
    }

    Brick {
        id: brick65
        x: 552
        y: 144
    }

    Brick {
        id: brick66
        x: 528
        y: 168
    }

    Brick {
        id: brick67
        x: 552
        y: 168
    }

    Brick {
        id: brick68
        x: 528
        y: 192
    }

    Brick {
        id: brick69
        x: 552
        y: 192
    }

    Brick {
        id: brick70
        x: 528
        y: 216
    }

    Brick {
        id: brick71
        x: 552
        y: 216
    }

    Brick {
        id: brick72
        x: 528
        y: 240
    }

    Brick {
        id: brick73
        x: 552
        y: 240
    }

    Brick {
        id: brick74
        x: 240
        y: 48
    }

    Brick {
        id: brick75
        x: 264
        y: 48
    }

    Brick {
        id: brick76
        x: 240
        y: 72
    }

    Brick {
        id: brick77
        x: 264
        y: 72
    }

    Brick {
        id: brick78
        x: 240
        y: 96
    }

    Brick {
        id: brick79
        x: 264
        y: 96
    }

    Brick {
        id: brick80
        x: 240
        y: 120
    }

    Brick {
        id: brick81
        x: 264
        y: 120
    }

    Brick {
        id: brick82
        x: 240
        y: 144
    }

    Brick {
        id: brick83
        x: 264
        y: 144
    }

    Brick {
        id: brick84
        x: 240
        y: 168
    }

    Brick {
        id: brick85
        x: 264
        y: 168
    }

    Brick {
        id: brick86
        x: 240
        y: 192
    }

    Brick {
        id: brick87
        x: 264
        y: 192
    }

    Brick {
        id: brick88
        x: 336
        y: 48
    }

    Brick {
        id: brick89
        x: 360
        y: 48
    }

    Brick {
        id: brick90
        x: 336
        y: 72
    }

    Brick {
        id: brick91
        x: 360
        y: 72
    }

    Brick {
        id: brick92
        x: 336
        y: 96
    }

    Brick {
        id: brick93
        x: 360
        y: 96
    }

    Brick {
        id: brick94
        x: 336
        y: 120
    }

    Brick {
        id: brick95
        x: 360
        y: 120
    }

    Brick {
        id: brick96
        x: 336
        y: 144
    }

    Brick {
        id: brick97
        x: 360
        y: 144
    }

    Brick {
        id: brick98
        x: 336
        y: 168
    }

    Brick {
        id: brick99
        x: 360
        y: 168
    }

    Brick {
        id: brick100
        x: 336
        y: 192
    }

    Brick {
        id: brick101
        x: 360
        y: 192
    }

    Brick {
        id: brick102
        x: 48
        y: 408
    }

    Brick {
        id: brick103
        x: 72
        y: 408
    }

    Brick {
        id: brick104
        x: 48
        y: 432
    }

    Brick {
        id: brick105
        x: 72
        y: 432
    }

    Brick {
        id: brick106
        x: 48
        y: 456
    }

    Brick {
        id: brick107
        x: 72
        y: 456
    }

    Brick {
        id: brick108
        x: 48
        y: 480
    }

    Brick {
        id: brick109
        x: 72
        y: 480
    }

    Brick {
        id: brick110
        x: 48
        y: 504
    }

    Brick {
        id: brick111
        x: 72
        y: 504
    }

    Brick {
        id: brick112
        x: 48
        y: 528
    }

    Brick {
        id: brick113
        x: 72
        y: 528
    }

    Brick {
        id: brick114
        x: 48
        y: 552
    }

    Brick {
        id: brick115
        x: 72
        y: 552
    }

    Brick {
        id: brick116
        x: 144
        y: 408
    }

    Brick {
        id: brick117
        x: 168
        y: 408
    }

    Brick {
        id: brick118
        x: 144
        y: 432
    }

    Brick {
        id: brick119
        x: 168
        y: 432
    }

    Brick {
        id: brick120
        x: 144
        y: 456
    }

    Brick {
        id: brick121
        x: 168
        y: 456
    }

    Brick {
        id: brick122
        x: 144
        y: 480
    }

    Brick {
        id: brick123
        x: 168
        y: 480
    }

    Brick {
        id: brick124
        x: 144
        y: 504
    }

    Brick {
        id: brick125
        x: 168
        y: 504
    }

    Brick {
        id: brick126
        x: 144
        y: 528
    }

    Brick {
        id: brick127
        x: 168
        y: 528
    }

    Brick {
        id: brick128
        x: 144
        y: 552
    }

    Brick {
        id: brick129
        x: 168
        y: 552
    }

    Brick {
        id: brick130
        x: 432
        y: 408
    }

    Brick {
        id: brick131
        x: 456
        y: 408
    }

    Brick {
        id: brick132
        x: 432
        y: 432
    }

    Brick {
        id: brick133
        x: 456
        y: 432
    }

    Brick {
        id: brick134
        x: 432
        y: 456
    }

    Brick {
        id: brick135
        x: 456
        y: 456
    }

    Brick {
        id: brick136
        x: 432
        y: 480
    }

    Brick {
        id: brick137
        x: 456
        y: 480
    }

    Brick {
        id: brick138
        x: 432
        y: 504
    }

    Brick {
        id: brick139
        x: 456
        y: 504
    }

    Brick {
        id: brick140
        x: 432
        y: 528
    }

    Brick {
        id: brick141
        x: 456
        y: 528
    }

    Brick {
        id: brick142
        x: 432
        y: 552
    }

    Brick {
        id: brick143
        x: 456
        y: 552
    }

    Brick {
        id: brick144
        x: 528
        y: 408
    }

    Brick {
        id: brick145
        x: 552
        y: 408
    }

    Brick {
        id: brick146
        x: 528
        y: 432
    }

    Brick {
        id: brick147
        x: 552
        y: 432
    }

    Brick {
        id: brick148
        x: 528
        y: 456
    }

    Brick {
        id: brick149
        x: 552
        y: 456
    }

    Brick {
        id: brick150
        x: 528
        y: 480
    }

    Brick {
        id: brick151
        x: 552
        y: 480
    }

    Brick {
        id: brick152
        x: 528
        y: 504
    }

    Brick {
        id: brick153
        x: 552
        y: 504
    }

    Brick {
        id: brick154
        x: 528
        y: 528
    }

    Brick {
        id: brick155
        x: 552
        y: 528
    }

    Brick {
        id: brick156
        x: 528
        y: 552
    }

    Brick {
        id: brick157
        x: 552
        y: 552
    }

    Brick {
        id: brick160
        x: 240
        y: 360
    }

    Brick {
        id: brick161
        x: 264
        y: 360
    }

    Brick {
        id: brick162
        x: 240
        y: 384
    }

    Brick {
        id: brick163
        x: 264
        y: 384
    }

    Brick {
        id: brick164
        x: 240
        y: 408
    }

    Brick {
        id: brick165
        x: 264
        y: 408
    }

    Brick {
        id: brick166
        x: 240
        y: 432
    }

    Brick {
        id: brick167
        x: 264
        y: 432
    }

    Brick {
        id: brick168
        x: 240
        y: 456
    }

    Brick {
        id: brick169
        x: 264
        y: 456
    }

    Brick {
        id: brick170
        x: 240
        y: 480
    }

    Brick {
        id: brick171
        x: 264
        y: 480
    }

    Brick {
        id: brick172
        x: 336
        y: 360
    }

    Brick {
        id: brick173
        x: 360
        y: 360
    }

    Brick {
        id: brick174
        x: 336
        y: 384
    }

    Brick {
        id: brick175
        x: 360
        y: 384
    }

    Brick {
        id: brick176
        x: 336
        y: 408
    }

    Brick {
        id: brick177
        x: 360
        y: 408
    }

    Brick {
        id: brick178
        x: 336
        y: 432
    }

    Brick {
        id: brick179
        x: 360
        y: 432
    }

    Brick {
        id: brick180
        x: 336
        y: 456
    }

    Brick {
        id: brick181
        x: 360
        y: 456
    }

    Brick {
        id: brick182
        x: 336
        y: 480
    }

    Brick {
        id: brick183
        x: 360
        y: 480
    }

    Brick {
        id: brick184
        x: 240
        y: 264
    }

    Brick {
        id: brick185
        x: 264
        y: 264
    }

    Brick {
        id: brick186
        x: 264
        y: 288
    }

    Brick {
        id: brick187
        x: 336
        y: 288
    }

    Brick {
        id: brick190
        x: 336
        y: 264
    }

    Brick {
        id: brick191
        x: 360
        y: 264
    }

    Brick {
        id: brick192
        x: 360
        y: 288
    }

    Brick {
        id: brick188
        x: 288
        y: 408
    }

    Brick {
        id: brick193
        x: 288
        y: 384
    }

    Brick {
        id: brick194
        x: 312
        y: 384
    }

    Brick {
        id: brick195
        x: 312
        y: 408
    }

    Brick {
        id: brick189
        x: 432
        y: 336
    }

    Brick {
        id: brick196
        x: 432
        y: 312
    }

    Brick {
        id: brick197
        x: 456
        y: 312
    }

    Brick {
        id: brick198
        x: 456
        y: 336
    }

    Brick {
        id: brick199
        x: 480
        y: 336
    }

    Brick {
        id: brick200
        x: 480
        y: 312
    }

    Brick {
        id: brick201
        x: 504
        y: 312
    }

    Brick {
        id: brick202
        x: 504
        y: 336
    }

    Brick {
        id: brick203
        x: 96
        y: 336
    }

    Brick {
        id: brick204
        x: 96
        y: 312
    }

    Brick {
        id: brick205
        x: 120
        y: 312
    }

    Brick {
        id: brick206
        x: 120
        y: 336
    }

    Brick {
        id: brick207
        x: 144
        y: 336
    }

    Brick {
        id: brick208
        x: 144
        y: 312
    }

    Brick {
        id: brick209
        x: 168
        y: 312
    }

    Brick {
        id: brick210
        x: 168
        y: 336
    }

    Brick {
        id: brick158
        x: 264
        y: 600
    }

    Brick {
        id: brick159
        x: 264
        y: 576
    }

    Brick {
        id: brick211
        x: 264
        y: 552
    }

    Brick {
        id: brick212
        x: 288
        y: 552
    }

    Brick {
        id: brick213
        x: 312
        y: 552
    }

    Brick {
        id: brick214
        x: 336
        y: 552
    }

    Brick {
        id: brick215
        x: 336
        y: 576
    }

    Brick {
        id: brick216
        x: 336
        y: 600
    }

    Text {
        id: text1
        x: 217
        y: 630
        color: "#efefef"
        text: qsTr("Game Over...")
        visible: true
        font.italic: true
        font.pixelSize: 32
    }

    Eagle {
        id: eagle1
        x: 288
        y: 576
    }

    Brick {
        id: brick217
        x: 0
        y: 312
    }

    Brick {
        id: brick218
        x: 24
        y: 312
    }

    Brick {
        id: brick219
        x: 576
        y: 312
    }

    Brick {
        id: brick220
        x: 600
        y: 312
    }

}

