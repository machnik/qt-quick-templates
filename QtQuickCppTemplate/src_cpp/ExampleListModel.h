#ifndef EXAMPLELISTMODEL_H
#define EXAMPLELISTMODEL_H

#include <QtCore/QAbstractListModel>
#include <QtCore/QStringList>

class ExampleListModel : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit ExampleListModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

private:
    QStringList m_data;
};

#endif // EXAMPLELISTMODEL_H
