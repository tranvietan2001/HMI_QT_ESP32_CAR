#ifndef SERIALMANAGE_H
#define SERIALMANAGE_H

#include <QObject>
#include <QDebug>
#include <QSerialPort>

class SerialManage : public QObject
{
    Q_OBJECT
public:
    explicit SerialManage(QObject *parent = nullptr);

    void config();

signals:

private slots:
    void readSerial();  // Đọc dữ liệu từ ESP32
private:
    QSerialPort serial;
    QString buffer;




};

#endif // SERIALMANAGE_H
