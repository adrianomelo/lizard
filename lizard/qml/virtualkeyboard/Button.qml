import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string value: ""

    width: 66
    height: 66

    Image {
        anchors.fill: parent
        source: "images/button_bg.png"

        Text {
            anchors.centerIn: parent
            text: value
            color: "black"
        }
    }

    Rectangle {
        anchors.centerIn: parent
        width: parent.width - border.width * 2
        height: parent.height - border.width * 2
        visible: parent.selected

        color: "transparent"
        border.width: 2
        border.color: "black"
        opacity: 0.8
    }

    onSelectedChanged: {
        if (selected)
            console.log("Selected " + value);
    }
}
