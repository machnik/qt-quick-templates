#ifndef MAINDIALOG_H
#define MAINDIALOG_H

#include <QDialog>

#include "exampledialog.h"

class QPushButton;
class QVBoxLayout;

class MainDialog : public QDialog {
    Q_OBJECT

public:
    explicit MainDialog(QWidget *parent = nullptr);

private:
    QPushButton *m_button;
    ExampleDialog *m_dialog;
    QVBoxLayout *m_layout;
};

#endif // MAINDIALOG_H

