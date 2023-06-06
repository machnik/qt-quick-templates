import QtQuick

Rectangle {

    color: "red"

    Text {
        text: "Using the mouse"
        anchors.centerIn: parent
    }

    Rectangle {
        id: rect1
        x: 20; y: 12
        width: 176; height: 96
        color: "lightsteelblue"
        border.color: "darkslategray"
        border.width: 3
        radius: 8

        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "lightsteelblue" }
        }

        Text {
            text: "Click me!"
            anchors.centerIn: parent
        }

        MouseArea {
            id: area
            width: parent.width
            height: parent.height
            onClicked: rect2.visible = !rect2.visible
        }
    }

    Rectangle {
        id: rect2
        x: 200; y: 12
        width: 176; height: 96
        border.color: "darkslategray"
        border.width: 3
        radius: 8
        color: "lightsteelblue"

        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "lightsteelblue" }
        }
    }
}
