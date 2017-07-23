#include "battlecity.h"

BattleCity::BattleCity(QWidget *parent) : QWidget(parent)
{
    k_event = new QKeyEvent(QEvent::KeyPress, Qt::Key_Up | Qt::Key_Down | Qt::Key_Left | Qt::Key_Right, Qt::NoModifier,QString(),true,1);
    QQmlComponent component(&engine, QUrl(QStringLiteral("qrc:/main.qml")));
    obj = component.create(); obj->setParent(this);
    setFocus();
}

BattleCity::~BattleCity()
{
    delete k_event;
}

