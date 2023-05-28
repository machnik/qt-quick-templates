import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

import "Tabs"

Window {
    width: 800
    height: 600
    visible: true
    title: "SimpleComponentsQML"

    TabBar {
        id: tabBar
        width: parent.width

        TabButton {
            text: "Tab 1"
        }
        TabButton {
            text: "Tab 2"
        }
        TabButton {
            text: "Tab 3"
        }
        TabButton {
            text: "Tab 4"
        }
        TabButton {
            text: "Tab 5"
        }
    }

    StackLayout {
        id: stackLayout
        currentIndex: tabBar.currentIndex
        width: parent.width
        anchors.top: tabBar.bottom
        anchors.bottom: parent.bottom

        Tab1 {}
        Tab2 {}
        Tab3 {}
        Tab4 {}
        Tab5 {}
    }
}
