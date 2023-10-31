import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import QtQuickCppTemplate.Backend 1.0

ApplicationWindow {

    id: root
    title: "QtQuickCppTemplate"

    visible: true

    width: 300
    height: 300
    
    minimumWidth: 300
    minimumHeight: 300

    function resetInputField(inputField) {
        inputField.text = "Text set using QML+JS.";
    }

    ExampleButtonActions {
        id: exampleButtonActions
    }

    Component {
        id: exampleWindowComponent
        ExampleWindow {}
    }

    menuBar: MenuBar {

        Menu {

            title: qsTr("Application")

            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }

        Menu {

            title: qsTr("Actions")

            MenuItem {

                text: qsTr("Set Input Field using QML+JS")

                onTriggered: {
                    resetInputField(textField);
                }
            }

            MenuItem {

                text: qsTr("Reset Input Field using C++")

                onTriggered: {
                    exampleButtonActions.resetInputField(textField);
                }
            }

            MenuSeparator {}

            MenuItem {

                text: qsTr("Open Example Window")

                onTriggered: {
                    var exampleWindow = exampleWindowComponent.createObject(root);
                    exampleWindow.show();
                }
            }

            MenuSeparator {}

            MenuItem {

                text: qsTr("Open Web Browser")

                onTriggered: {
                    BackendUtils.openWebBrowser("https://www.qt.io/");
                }
            }
        }
    }

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 10

        Text {
            text: qsTr("Simple List Views:")
            font.pixelSize: 22
            font.weight: Font.Bold
            color: "#006400"
        }

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
                    resetInputField(textField);
                }
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
            color: "#00000000" // transparent
        }

        Button {

            text: "Open ExampleWindow"

            Layout.fillWidth: true

            onClicked: {
                var exampleWindow = exampleWindowComponent.createObject(root);
                exampleWindow.show();
            }
        }
    }
}
