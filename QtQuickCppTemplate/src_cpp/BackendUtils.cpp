#include "BackendUtils.h"

#include <QtGui/QDesktopServices>

BackendUtils::BackendUtils(QObject *parent)
    : QObject(parent) {}

void BackendUtils::openWebBrowser(const QUrl &url)
{
    QDesktopServices::openUrl(url);
}
