#include "exampledialog.h"

#include <QLabel>
#include <QLineEdit>
#include <QPushButton>
#include <QVBoxLayout>

ExampleDialog::ExampleDialog(QWidget *parent)
    : QDialog(parent) {
    
    setWindowTitle("Example Dialog");

    QVBoxLayout *layout = new QVBoxLayout(this);

    m_label = new QLabel("Hello from the Example Dialog!", this);
    m_lineEdit = new QLineEdit(this);
    m_button = new QPushButton("Close Dialog", this);

    layout->addWidget(m_label);
    layout->addWidget(m_lineEdit);
    layout->addWidget(m_button);

    connect(m_button, &QPushButton::clicked, this, &ExampleDialog::close);
}

