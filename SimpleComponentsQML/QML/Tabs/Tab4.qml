import QtQuick

import "qrc:/QML/Components"

Rectangle {

    color: "yellow"

    Text {
        id: text
        text: "Positioning and Transforming Items"
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
        }
    }

    Grid {
    
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: text.bottom
        }
    
        anchors.margins: 8
        spacing: 4

        Repeater {

            model: 16
            delegate: ClickableImage {

                required property int index

                width: 128; height: 128
                source: "qrc:/images/wheel.png"
                antialiasing: true
                onClicked: {
                    rotation += 15
                }
            }
        }
    }
}
