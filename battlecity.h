#ifndef BATTLECITY_H
#define BATTLECITY_H

#include <QWidget>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QKeyEvent>
#include <QDebug>

class BattleCity : public QWidget
{
    Q_OBJECT
public:
    explicit BattleCity(QWidget *parent = 0);
    ~BattleCity();

protected:
    virtual void keyPressEvent(QKeyEvent *k_event) {
        qDebug() << "keyPressEvent";
        return;
    }
    bool event(QEvent *e) {
        qDebug() << "event";
    }

private:
    QKeyEvent *k_event;
    QQmlApplicationEngine engine;
    QQmlComponent *component;//(&engine, QUrl(QStringLiteral("qrc:/main.qml")));
    QObject *obj;

signals:

public slots:
};

#endif // BATTLECITY_H
