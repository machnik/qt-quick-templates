import QtQuick

Rectangle {
    color: "white"

    Text {
        id: text
        text: "Image"
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 100
        }
    }

    Image {
        source: "qrc:/images/example.jpg"
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: text.bottom
            topMargin: 20
        }
    }
}
