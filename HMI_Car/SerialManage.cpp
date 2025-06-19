#include "SerialManage.h"

SerialManage::SerialManage(QObject *parent)
    : QObject{parent}
{
    config();
}

void SerialManage::readSerial()
{
    buffer += serial.readAll();

    while (buffer.contains('\n')) {
        int index = buffer.indexOf('\n');
        QString line = buffer.left(index).trimmed();
        buffer = buffer.mid(index + 1);

        qDebug() << buffer << "\n";
    }
}

void SerialManage::config()
{
    serial.setPortName("/dev/ttyUSB0");  // Chỉnh cho đúng cổng ESP32
    serial.setBaudRate(QSerialPort::Baud115200);
    serial.setDataBits(QSerialPort::Data8);
    serial.setParity(QSerialPort::NoParity);
    serial.setStopBits(QSerialPort::OneStop);
    serial.setFlowControl(QSerialPort::NoFlowControl);

    if (serial.open(QIODevice::ReadWrite)) {
        connect(&serial, &QSerialPort::readyRead, this, &SerialManage::readSerial);
        qDebug() << "Serial connected!";
    } else {
        qDebug() << "Serial open failed!";
    }
}

