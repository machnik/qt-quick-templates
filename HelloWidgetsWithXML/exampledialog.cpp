#include "exampledialog.h"

ExampleDialog::ExampleDialog(QWidget *parent)
    : QDialog(parent) {
    
    setupUi(this);

    connect(m_button, &QPushButton::clicked, this, &ExampleDialog::close);
}

