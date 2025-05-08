#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSerialPort>
#include <QDebug>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);



    qDebug() << "hello";
    QSerialPort* COMPORT;
    COMPORT = new QSerialPort;
    COMPORT->setPortName("/dev/ttyUSB0");
    COMPORT->setBaudRate(QSerialPort::BaudRate::Baud9600);
    COMPORT->open(QIODevice::ReadWrite);
    if(COMPORT->isOpen()){

        qDebug() << "OPEN: " << COMPORT->readAll();
        COMPORT->write("OPEN");


    }else{
        qDebug() << "ERR" << COMPORT->error() << COMPORT->portName();
    }



    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
