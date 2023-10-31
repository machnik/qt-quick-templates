#ifndef BACKENDUTILS_H
#define BACKENDUTILS_H

#include <QtCore/QObject>
#include <QtCore/QUrl>

class BackendUtils : public QObject
{
    Q_OBJECT
public:
    explicit BackendUtils(QObject *parent = nullptr);

    Q_INVOKABLE void openWebBrowser(const QUrl &url);
};

#endif // BACKENDUTILS_H
