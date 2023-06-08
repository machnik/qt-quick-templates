import QtQuick

import "qrc:/QML/Components"

Rectangle {

    color: "green"

    Text {
        text: "Custom Button Component"
        anchors.centerIn: parent
    }
    
    SimpleButton {
        id: button
        x: 140; y: 60
        width: 120; height: 60
        text: "Click me!"
        onClicked: status.text = "Button has been clicked!"
    }

    Text { 
        id: status
        x: 140; y: 160
        width: 120; height: 30
        text: "Click the button!"
        horizontalAlignment: Text.AlignHCenter
    }
}
