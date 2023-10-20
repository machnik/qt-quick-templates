import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import QtQuickCppTemplate.Backend 1.0

ApplicationWindow {

    id: root

    visible: true
    width: 300
    height: 250
    title: "QtQuickCppTemplate"

    property string exampleWindowQML: "ExampleWindow.qml"

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 10

        RowLayout {

            Layout.fillWidth: true
            Layout.fillHeight: true

            ListView {

                Layout.fillWidth: true
                Layout.fillHeight: true

                model: ListModel {

                    ListElement { display: "Item 1"}
                    ListElement { display: "Item 2"}
                    ListElement { display: "Item 3"}
                }

                delegate: Text {
                    text: "$ " + model.display
                    color: "red"
                    font.pixelSize: 18
                }
            }

            ListView {

                Layout.fillWidth: true
                Layout.fillHeight: true

                model: exampleListModel

                delegate: Text {
                    text: "# " + model.display
                    color: "magenta"
                    font.pixelSize: 18
                }
            }

        }

        TextField {

            id: textField
            
            Layout.fillWidth: true
            text: "Enter text here"
        }

        RowLayout {

            Button {

                text: "Set text using QML+JS"

                Layout.fillWidth: true

                onClicked: {
                    textField.text = "Text set using QML+JS.";
                }
            }

            ExampleButtonActions {
                id: exampleButtonActions
            }

            Button {

                text: "Set text using C++"

                Layout.fillWidth: true

                onClicked: {
                    exampleButtonActions.resetInputField(textField);
                }
            }
        }

        Rectangle {

            Layout.fillWidth: true
            height: 10
            color: "#00000000"
        }

        Button {

            text: "Open ExampleWindow"

            Layout.fillWidth: true

            onClicked: {

                var component = Qt.createComponent(exampleWindowQML);

                if (component.status == Component.Ready) {
                    var window = component.createObject(root);
                    window.show();
                } else {
                    console.log("Error loading component:", component.errorString());
                }
            }
        }
    }
}
