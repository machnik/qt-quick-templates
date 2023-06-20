import QtQuick
import QtQuick.Window

Window {
    id: root
    visible: true
    width: 800; height: 800

    Rectangle {
        id: backgroundRect
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightgray" }
            GradientStop { position: 1.0; color: "darkgray" }
        }

        Rectangle {
            id: animatedItem1
            width: 100; height: 100
            color: "red"
            x: root.width / 3 - width / 2
            y: root.height / 2 - height / 2
            rotation: 0
            opacity: 1

            SequentialAnimation on color {
                id: colorAnimation1
                running: false
                loops: Animation.Infinite
                ColorAnimation { to: "blue"; duration: 1000 }
                ColorAnimation { to: "green"; duration: 1000 }
                ColorAnimation { to: "red"; duration: 1000 }
            }

            PropertyAnimation {
                id: opacityAnimation1
                target: animatedItem1
                property: "opacity"
                to: 0
                duration: 1000
                running: false
                loops: Animation.Infinite
            }

            NumberAnimation on rotation {
                id: rotationAnimation1
                from: 0; to: 360
                duration: 3000
                loops: Animation.Infinite
                running: false
            }

            Behavior on width {
                NumberAnimation { duration: 1000; easing.type: Easing.OutBounce }
            }

            Behavior on height {
                NumberAnimation { duration: 1000; easing.type: Easing.OutBounce }
            }

            states: [
                State {
                    name: "small"
                    PropertyChanges { target: animatedItem1; width: 100; height: 100 }
                },
                State {
                    name: "large"
                    PropertyChanges { target: animatedItem1; width: 300; height: 300 }
                }
            ]

            transitions: [
                Transition {
                    from: "small"; to: "large"
                    NumberAnimation { properties: "width, height"; duration: 1000 }
                },
                Transition {
                    from: "large"; to: "small"
                    NumberAnimation { properties: "width, height"; duration: 1000 }
                }
            ]

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    if (mouse.button === Qt.LeftButton) {
                        if (animatedItem1.state === "small") {
                            animatedItem1.state = "large";
                        } else {
                            animatedItem1.state = "small";
                        }
                        colorAnimation1.running = true;
                        rotationAnimation1.running = true;
                        opacityAnimation1.running = true;
                    } else if (mouse.button === Qt.RightButton) {
                        animatedItem1.state = "small";
                        colorAnimation1.stop();
                        rotationAnimation1.stop();
                        opacityAnimation1.stop();
                        animatedItem1.color = "red";
                        animatedItem1.rotation = 0;
                        animatedItem1.opacity = 1;
                    }
                }
            }
        }

        Rectangle {
            id: animatedItem2
            width: 100; height: 100
            color: "blue"
            x: 2 * root.width / 3 - width / 2
            y: root.height / 2 - height / 2
            rotation: 0
            opacity: 1

            SequentialAnimation on color {
                id: colorAnimation2
                running: false
                loops: Animation.Infinite
                ColorAnimation { to: "green"; duration: 1000 }
                ColorAnimation { to: "red"; duration: 1000 }
                ColorAnimation { to: "blue"; duration: 1000 }
            }

            PropertyAnimation {
                id: opacityAnimation2
                target: animatedItem2
                property: "opacity"
                to: 0
                duration: 1000
                running: false
                loops: Animation.Infinite
            }

            NumberAnimation on rotation {
                id: rotationAnimation2
                from: 0; to: 360
                duration: 3000
                loops: Animation.Infinite
                running: false
            }

            Behavior on width {
                NumberAnimation { duration: 1000; easing.type: Easing.OutBounce }
            }

            Behavior on height {
                NumberAnimation { duration: 1000; easing.type: Easing.OutBounce }
            }

            states: [
                State {
                    name: "small"
                    PropertyChanges { target: animatedItem2; width: 100; height: 100 }
                },
                State {
                    name: "large"
                    PropertyChanges { target: animatedItem2; width: 300; height: 300 }
                }
            ]

            transitions: [
                Transition {
                    from: "small"; to: "large"
                    NumberAnimation { properties: "width, height"; duration: 1000 }
                },
                Transition {
                    from: "large"; to: "small"
                    NumberAnimation { properties: "width, height"; duration: 1000 }
                }
            ]

            MouseArea {
                id: mouseArea2
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    if (mouse.button === Qt.LeftButton) {
                        if (animatedItem2.state === "small") {
                            animatedItem2.state = "large";
                        } else {
                            animatedItem2.state = "small";
                        }
                        colorAnimation2.running = true;
                        rotationAnimation2.running = true;
                        opacityAnimation2.running = true;
                    } else if (mouse.button === Qt.RightButton) {
                        animatedItem2.state = "small";
                        colorAnimation2.stop();
                        rotationAnimation2.stop();
                        opacityAnimation2.stop();
                        animatedItem2.color = "blue";
                        animatedItem2.rotation = 0;
                        animatedItem2.opacity = 1;
                    }
                }
            }
        }
    }
}
