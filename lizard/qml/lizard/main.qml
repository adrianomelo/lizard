import QtQuick 1.1
import com.adrianomelo 1.0
import "../virtualkeyboard/"
import "../texteditor/"

Rectangle {
    color: "#8e8d98"
    width: 800
    height: 300

    function next()
    {
        control.next();
    }

    Item {
        anchors.fill: parent

        TextEditor {
            id: textEditor

            height: parent.height - virtualKeyboard.height

            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: virtualKeyboard.top
        }

        VirtualKeyboard {
            id: virtualKeyboard

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
        }
    }

    ScanningControl {
        id: control
    }

    Timer {
        running: true
        interval: 1000
        repeat: true
        onTriggered: parent.next();
    }

    focus: true
    Keys.onPressed: {
        control.select();
    }

    MouseArea {
        anchors.fill: parent
        onPressed: control.select();
    }
}
