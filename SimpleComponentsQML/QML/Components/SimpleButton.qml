import QtQuick

Item {

    id: root

    property alias text: label.text
    signal clicked

    width: 100; height: 30

    Rectangle {

        id: button
        anchors.fill: parent
        color: "lightsteelblue"
        border.color: "slategrey"

        Text {
            id: label
            anchors.centerIn: parent
            text: "Button"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.clicked()
            }
        }
    }
}
