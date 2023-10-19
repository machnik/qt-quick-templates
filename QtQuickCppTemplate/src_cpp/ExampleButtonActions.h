#ifndef EXAMPLEBUTTONACTIONS_H
#define EXAMPLEBUTTONACTIONS_H

#include <QtCore/QObject>
#include <QtQml/QQmlProperty>

class ExampleButtonActions : public QObject
{
    Q_OBJECT
public:
    explicit ExampleButtonActions(QObject *parent = nullptr);

public slots:
    void resetInputField(QObject* textField);
};

#endif // EXAMPLEBUTTONACTIONS_H
