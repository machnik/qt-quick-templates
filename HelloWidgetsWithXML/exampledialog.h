#ifndef EXAMPLEDIALOG_H
#define EXAMPLEDIALOG_H

#include <QDialog>
#include "ui_exampledialog.h"

class ExampleDialog
    : public QDialog, private Ui::ExampleDialog {
    Q_OBJECT

public:
    explicit ExampleDialog(QWidget *parent = nullptr);
};

#endif // EXAMPLEDIALOG_H

