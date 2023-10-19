#include "ExampleListModel.h"

ExampleListModel::ExampleListModel(QObject *parent)
    : QAbstractListModel(parent),
    m_data({"Item 1", "Item 2", "Item 3"})
{
}

int ExampleListModel::rowCount(const QModelIndex &) const
{
    return m_data.count();
}

QVariant ExampleListModel::data(const QModelIndex &index, int) const
{
    if (!index.isValid() || index.row() < 0 || index.row() >= m_data.count())
        return QVariant();

    return m_data.at(index.row());
}
