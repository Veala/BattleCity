#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>

//#include <QApplication>
//#include "battlecity.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    //BattleCity *bsy = new BattleCity();
    //bsy->show();
//    bsy->show();
    //bs.show();
    QQmlApplicationEngine engine;
    QQmlComponent component(&engine, QUrl(QStringLiteral("qrc:/main.qml")));
    QObject *obj = component.create();

    //engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
