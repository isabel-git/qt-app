import QtQuick
import QtQuick.Window
import "ui/BottomBar"
import "ui/RightSide"
import "ui/LeftSide"


Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Hello World")

    RightSide {
        id: rightSide
    }
    BottomBar {
        id: bottomBar
    }
    LeftSide {
        id: leftSide
    }
}
