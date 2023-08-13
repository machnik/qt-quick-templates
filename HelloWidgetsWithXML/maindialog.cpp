#include "maindialog.h"

#include <QPushButton>
#include <QVBoxLayout>

#include "exampledialog.h"

MainDialog::MainDialog(QWidget *parent) 
    : QDialog(parent) {

    setWindowTitle("Hello Widgets");

    resize(200, 100);

    m_button = new QPushButton("Open Dialog", this);
    m_layout = new QVBoxLayout(this);

    m_layout->addWidget(m_button);

    connect(m_button, &QPushButton::clicked, this, [this]() {
        m_dialog = new ExampleDialog(this);
        m_dialog->show();
    });
}

