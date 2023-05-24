import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "HelloQML"

    Label {
        text: "Hello World!"
        anchors.centerIn: parent
    }
}
