import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import QtQuick.Layouts

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 800
    title: "Form Editor"

    Timer {
        id: timer
        interval: 5000 // this sets the timer to 5 seconds
        running: false
        repeat: false
        onTriggered: {
            busyIndicator.running = false;
        }
    }

    MessageDialog {
        id: dialog
        title: "Data saved (not really)"
        text: "Your data has been successfully saved (not really)."
        onAccepted: {
            statusLabel.text = qsTr("Data has been saved (not really)!")
        }
    }

    FileDialog {
        id: saveDialog
        title: "Please choose a location"
        nameFilters: [ "Text files (*.txt)" ]
        onAccepted: {
            var textToWrite = "Submitted! Name: " + nameField.text + ", Email: " + emailField.text +
            ", Date of Birth: " + dobField.text + ", Gender: " + genderField.currentText +
            ", Favorite Color: " + colorLabel.text +
            ", Number: " + sliderField.value +
            ", Integer: " + spinBoxField.value +
            ", Switch: " + (switchField.checked ? "On" : "Off") +
            ", Favorite Time: " + timeField.text +
            ", Dial: " + dialField.value +
            ", Option: " + (option1.checked ? option1.text : option2.checked ? option2.text : option3.text) +
            ", Address: " + addressField.text + ", Interests: " +
            (interest1.checked ? interest1.text + " " : "") +
            (interest2.checked ? interest2.text + " " : "") +
            (interest3.checked ? interest3.text : "");

            dialog.text = textToWrite;
            dialog.open();
        }
    }

    ColumnLayout {
        anchors.centerIn: parent
        anchors.topMargin: 40
        anchors.bottomMargin: 40

        ScrollView {
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.leftMargin: 20
            anchors.topMargin: 20

            GridLayout {
                columns: 2
                width: Math.min(parent.width, 600)
                Layout.alignment: Qt.AlignCenter

                Label { text: "Name:" }
                TextField {
                    id: nameField
                    placeholderText: "Enter your name"
                    Layout.fillWidth: true
                }

                Label { text: "Email:" }
                TextField {
                    id: emailField
                    placeholderText: "Enter your email"
                    Layout.fillWidth: true
                }

                Label { text: "Date of Birth:" }
                TextField {
                    id: dobField
                    placeholderText: "Enter date"
                    Layout.fillWidth: true
                }

                Label { text: "Gender:" }
                ComboBox {
                    id: genderField
                    model: ["Male", "Female", "Other"]
                    Layout.fillWidth: true
                }

                ColorDialog {
                    id: colorDialog
                    onAccepted: {
                        colorLabel.text = "Color: " + colorDialog.color
                    }
                }

                Label {
                    id: colorLabel
                    text: "Select a color"
                }

                Button {
                    text: "Select Color"
                    onClicked: {
                        colorDialog.open()
                    }
                }

                Label { text: "Number:" }
                Slider {
                    id: sliderField
                    from: 0
                    to: 100
                    value: 50
                    onValueChanged: progressField.value = value
                    Layout.fillWidth: true
                }

                Label { text: "Progress:" }
                ProgressBar {
                    id: progressField
                    from: 0
                    to: 100
                    value: sliderField.value
                    Layout.fillWidth: true
                }

                Label { text: "Integer:" }
                SpinBox {
                    id: spinBoxField
                    from: 0
                    to: 100
                    value: 50
                    Layout.fillWidth: true
                }

                Label { text: "Switch:" }
                Switch {
                    id: switchField
                    checked: false
                }

                Label { text: "Favorite Time:" }
                TextField {
                    id: timeField
                    placeholderText: "Enter time"
                    Layout.fillWidth: true
                }

                Label { text: "Dial:" }
                Dial {
                    id: dialField
                    from: 0
                    to: 100
                    value: 50
                    Layout.fillWidth: true
                }

                Label { text: "Options:" }
                Column {
                    RadioButton { id: option1; text: "Option 1"; checked: true }
                    RadioButton { id: option2; text: "Option 2" }
                    RadioButton { id: option3; text: "Option 3" }
                }

                Label { text: "Address:" }
                TextArea {
                    id: addressField
                    placeholderText: "Enter your address"
                    wrapMode: TextArea.Wrap
                    Layout.fillWidth: true
                    Layout.columnSpan: 2
                }

                Label { text: "Interests:" }
                Column {
                    CheckBox { id: interest1; text: "Music" }
                    CheckBox { id: interest2; text: "Movies" }
                    CheckBox { id: interest3; text: "Sports" }
                }

                Button {
                    text: "Submit (not really)"
                    Layout.columnSpan: 2
                    onClicked: {
                        // Open the save file dialog
                        saveDialog.open();
                        // Start busy indicator and timer
                        busyIndicator.running = true;
                        timer.start();
                    }
                }

                BusyIndicator {
                    id: busyIndicator
                    running: false
                    Layout.columnSpan: 2
                    Layout.fillWidth: true
                }
            }
        }

        Label {
            id: statusLabel
            padding: 10
            width: parent.width
            Layout.alignment: Qt.AlignCenter
        }
    }
}

