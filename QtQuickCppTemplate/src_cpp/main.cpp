#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlContext>

#include "BackendUtils.h"
#include "ExampleButtonActions.h"
#include "ExampleListModel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    BackendUtils backendUtils;
    qmlRegisterSingletonInstance<BackendUtils>(
        "QtQuickCppTemplate.Backend", 1, 0, "BackendUtils", &backendUtils
    );

    ExampleListModel exampleListModel;
    engine.rootContext()->setContextProperty("exampleListModel", &exampleListModel);

    qmlRegisterType<ExampleButtonActions>(
        "QtQuickCppTemplate.Backend", 1, 0, "ExampleButtonActions"
    );

    const QUrl url(QStringLiteral("qrc:/src_qml/main.qml"));
    
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); }, Qt::QueuedConnection
    );

    engine.load(url);

    return app.exec();
}
