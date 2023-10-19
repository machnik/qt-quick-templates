
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {

    width: 600
    height: 700
    visible: true
    title: "Example Window"

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 10

        RowLayout {

            Button {
                text: "Click me!"
                onClicked: console.log("Button clicked!")
            }

            SpinBox {
                from: 0
                to: 100
                value: 50
            }

            Slider {
                from: 0
                to: 100
                value: 50
            }

            RadioButton {
                text: "Radio Button"
            }

            CheckBox {
                text: "Check Me!"
            }
        }

        RowLayout {

            ToolButton {
                text: "Tool Button"
            }

            ComboBox {
                model: ["Option 1", "Option 2", "Option 3"]
                currentIndex: 0
            }

            Switch {
                text: "Switch me!"
            }

            TextField {
                text: "Enter text here"
            }

            BusyIndicator {
                running: true
            }
        }

        RowLayout {

            Dial {
                id: dial1
                from: 0
                to: 100
                value: 50
            }

            ProgressBar {
                Layout.fillWidth: true
                from: 0
                to: 100
                value: dial1.value
            }
        }


        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 4
            color: "green"
        }

        TextArea {
            text: "Enter text into this text area."
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            wrapMode: TextEdit.WordWrap
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 4
            color: "green"
        }

        Image {
            Layout.fillWidth: true
            fillMode: Image.PreserveAspectFit
            source: "qrc:/media/image.jpg"
        }
    }
}
