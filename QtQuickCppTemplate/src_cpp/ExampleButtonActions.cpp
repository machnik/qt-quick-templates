#include "ExampleButtonActions.h"

ExampleButtonActions::ExampleButtonActions(QObject *parent) : QObject(parent) {}

void ExampleButtonActions::resetInputField(QObject* textField)
{
    QQmlProperty::write(textField, "text", "Text set using C++.");
}
