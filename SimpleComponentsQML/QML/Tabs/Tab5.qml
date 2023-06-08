import QtQuick

import "qrc:/QML/Components"

Rectangle {

    color: "blue"
    width: 800; height: 600

    Text {
        id: text
        text: "Text Inputs and raw Key Events"

        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 10
        }
    }

    Row {

        anchors {
            top: text.bottom
            topMargin: 20
            horizontalCenter: parent.horizontalCenter
        }

        spacing: 20

        Column {

            spacing: 10

            SimpleLineEdit {
                id: input1
                width: 120; height: 30
                text: "Text Input 1"
            }

            SimpleLineEdit {
                id: input2
                width: 200; height: 30
                text: "Text Input 2"
            }

            SimpleTextEdit {
                id: input3
                width: 200; height: 400
                text: "Multi-line Text Input"
            }
        }

        Rectangle {

            width: 400; height: 200
            color: "lightgray"
            border.color: "black"

            Rectangle {
                id: square
                x: 8; y: 8
                width: 50; height: 50
                color: "red"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: parent.forceActiveFocus()
            }

            Keys.onLeftPressed: square.x -= 8
            Keys.onRightPressed: square.x += 8
            Keys.onUpPressed: square.y -= 8
            Keys.onDownPressed: square.y += 8

            Keys.onPressed: function (event) {
                switch(event.key) {
                    case Qt.Key_Plus:
                        square.scale += 0.2
                        break;
                    case Qt.Key_Minus:
                        square.scale -= 0.2
                        break;
                }
            }
        }
    }
}
