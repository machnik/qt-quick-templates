#ifndef EXAMPLEDIALOG_H
#define EXAMPLEDIALOG_H

#include <QDialog>

class QLabel;
class QLineEdit;
class QPushButton;

class ExampleDialog : public QDialog {
    Q_OBJECT

public:
    explicit ExampleDialog(QWidget *parent = nullptr);

private:
    QLabel *m_label;
    QLineEdit *m_lineEdit;
    QPushButton *m_button;
};

#endif // EXAMPLEDIALOG_H

