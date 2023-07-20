import QtQuick 2.15

Rectangle {
    id: leftSide
    anchors {
        left: parent.left
        right: rightSide.left
        bottom: bottomBar.top
        top: parent.top
    }
    color: "blue"
}
