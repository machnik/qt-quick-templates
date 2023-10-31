
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {

    title: "Example Window"

    visible: true

    property int defaultMargin: 10
    
    Component.onCompleted: {
        width = mainLayout.implicitWidth + 2 * defaultMargin
        height = mainLayout.implicitHeight + 2 * defaultMargin
    }

    minimumWidth: mainLayout.implicitWidth + 2 * defaultMargin
    minimumHeight: mainLayout.implicitHeight + 2 * defaultMargin

    ColumnLayout {

        id: mainLayout

        anchors.fill: parent
        anchors.margins: defaultMargin

        GridLayout {

            columns: 5
            rowSpacing: 10
            columnSpacing: 10

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
